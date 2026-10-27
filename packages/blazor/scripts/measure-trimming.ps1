param(
    [string[]] $Frameworks = @('net8.0', 'net10.0'),
    [string[]] $Cases = @(),
    [switch] $Resume,
    [switch] $ValidateOnly
)
$ErrorActionPreference = 'Stop'
$packageRoot = Split-Path -Parent $PSScriptRoot
Push-Location -LiteralPath $packageRoot
try {
    foreach ($framework in $Frameworks) { if ($framework -notin @('net8.0','net10.0')) { throw 'Unsupported target framework' } }
    $plan = @(Get-Content -Raw artifacts/trim-cases.json | ConvertFrom-Json)
    if ($Cases.Count) {
        foreach ($caseId in $Cases) { if ($caseId -notin $plan.id) { throw "Unknown case: $caseId" } }
        $plan = @($plan | Where-Object { $_.id -in $Cases })
    }
    $resultPath = Join-Path $packageRoot 'artifacts/trim-comparison.json'
    $packageVersion = [string]([xml](Get-Content -Raw src/SolarIcons.Blazor/SolarIcons.Blazor.csproj)).Project.PropertyGroup.Version
    $snapshotRoot = Join-Path $packageRoot 'artifacts/measured-packages'
    $saved = if ($ValidateOnly -and (Test-Path -LiteralPath $resultPath)) { Get-Content -Raw -LiteralPath $resultPath | ConvertFrom-Json } else { $null }
    $savedArchive = if ($saved -and $saved.packageSha256 -match '^[A-Fa-f0-9]{64}$') { Join-Path $snapshotRoot ($saved.packageSha256 + '.nupkg') } else { $null }
    $archive = if ($savedArchive -and (Test-Path -LiteralPath $savedArchive)) { Get-Item -LiteralPath $savedArchive } else { Get-Item -LiteralPath "artifacts/packages/SolarIcons.Blazor.$packageVersion.nupkg" }
    $packageHash = (Get-FileHash -LiteralPath $archive.FullName -Algorithm SHA256).Hash
    New-Item -ItemType Directory -Path $snapshotRoot -Force | Out-Null
    $snapshotPath = Join-Path $snapshotRoot ($packageHash + '.nupkg')
    if (-not (Test-Path -LiteralPath $snapshotPath)) { Copy-Item -LiteralPath $archive.FullName -Destination $snapshotPath }
    if ((Get-FileHash -LiteralPath $snapshotPath -Algorithm SHA256).Hash -ne $packageHash) { throw 'The benchmark archive snapshot was modified' }
    $zip = [IO.Compression.ZipFile]::OpenRead($archive.FullName)
    try {
        $libraryStream = $zip.GetEntry('lib/net8.0/SolarIcons.Blazor.dll').Open()
        try { $libraryHash = [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($libraryStream)) }
        finally { $libraryStream.Dispose() }
    }
    finally { $zip.Dispose() }
    $catalogue = Get-Content -Raw catalogue-manifest.json | ConvertFrom-Json
    $measurements = [System.Collections.Generic.List[object]]::new()
    if (($Resume -or $ValidateOnly) -and (Test-Path -LiteralPath $resultPath)) {
        $previous = Get-Content -Raw -LiteralPath $resultPath | ConvertFrom-Json
        if ($previous.packageSha256 -ne $packageHash -or $previous.generatedHash -ne $catalogue.generatedHash) { throw 'Saved measurements refer to different inputs; start a fresh run' }
        foreach ($measurement in $previous.measurements) { $measurements.Add($measurement) }
    }
    function Save-Results {
        [PSCustomObject]@{
            sdk = (& dotnet --version); packageVersion = $packageVersion; packageSha256 = $packageHash
            librarySha256 = $libraryHash; packageSnapshot = [IO.Path]::GetRelativePath($packageRoot, $snapshotPath)
            generatedHash = $catalogue.generatedHash; publishTrimmed = $true; webcil = $false; aot = $false
            staticWeight = 'Linear'; selection = 'Home first, then remaining canonical names in ordinal order'
            measurements = $measurements
        } | ConvertTo-Json -Depth 7 | Set-Content -LiteralPath $resultPath
    }
    function Assert-Measurement($measurement, $scenario) {
        $actual = @($measurement.retainedIconTypes | Sort-Object)
        $expected = @($scenario.componentTypes | Sort-Object)
        if (($actual -join ',') -ne ($expected -join ',')) { throw "Unexpected retained types: $($measurement.framework)/$($scenario.id)" }
        if ($measurement.trimWarnings.Count) { throw "IL warnings: $($measurement.framework)/$($scenario.id)" }
        if ($scenario.mode -eq 'empty' -and $measurement.libraryBytes -ne 0) { throw 'Empty consumer retained the library' }
    }
    if (-not $ValidateOnly) {
        foreach ($framework in $Frameworks) {
            & dotnet restore probes/TrimProbe "-p:TargetFramework=$framework" --nologo
            if ($LASTEXITCODE -ne 0) { throw "Restore failed for $framework" }
            foreach ($scenario in $plan) {
                $existing = @($measurements | Where-Object { $_.framework -eq $framework -and $_.case -eq $scenario.id })
                if ($existing.Count) { Assert-Measurement $existing[0] $scenario; continue }
                $allowedRoot = [IO.Path]::GetFullPath((Join-Path $packageRoot 'artifacts/comparison')) + [IO.Path]::DirectorySeparatorChar
                $output = [IO.Path]::GetFullPath((Join-Path $allowedRoot "$framework/$($scenario.id)"))
                if (-not $output.StartsWith($allowedRoot,[StringComparison]::OrdinalIgnoreCase) -or (Split-Path -Leaf $output) -ne $scenario.id) { throw 'Publish output is outside the verified benchmark directory' }
                if (Test-Path -LiteralPath $output) { Remove-Item -LiteralPath $output -Recurse -Force }
                $log = Join-Path $packageRoot "artifacts/trim-$framework-$($scenario.id).log"
                $timer = [Diagnostics.Stopwatch]::StartNew()
                & dotnet publish probes/TrimProbe -c Release --no-restore "-p:TargetFramework=$framework" "-p:ProbeCase=$($scenario.id)" -o $output --nologo *> $log
                $publishExit = $LASTEXITCODE
                $timer.Stop()
                if ($publishExit -ne 0) { Get-Content -LiteralPath $log -Tail 25; throw "Publish failed: $framework/$($scenario.id)" }
                $frameworkPath = Join-Path $output 'wwwroot/_framework'
                $library = Get-ChildItem -LiteralPath $frameworkPath -Filter 'SolarIcons.Blazor*.dll' | Select-Object -First 1
                $inspection = if ($library) { & dotnet tools/AssemblyInspector/bin/Release/net10.0/AssemblyInspector.dll $library.FullName | ConvertFrom-Json } else { [PSCustomObject]@{ bytes=0; types=@() } }
                $files = @(Get-ChildItem -LiteralPath $frameworkPath -File | Where-Object { $_.Extension -notin @('.br','.gz','.pdb','.map') })
                $brotliBytes = 0L
                foreach ($file in $files) { $compressed = $file.FullName + '.br'; $brotliBytes += $(if(Test-Path -LiteralPath $compressed) { (Get-Item -LiteralPath $compressed).Length } else { $file.Length }) }
                $libraryBr = if ($library -and (Test-Path -LiteralPath ($library.FullName+'.br'))) { (Get-Item -LiteralPath ($library.FullName+'.br')).Length } else { $inspection.bytes }
                $measurement = [PSCustomObject]@{
                    framework=$framework; case=$scenario.id; mode=$scenario.mode; logicalIcons=$scenario.iconNames.Count
                    publishSeconds=[Math]::Round($timer.Elapsed.TotalSeconds,2); libraryBytes=$inspection.bytes; libraryBrotliBytes=$libraryBr
                    retainedIconTypes=@($inspection.types | Where-Object { $_ -match 'Icon$' })
                    frameworkUncompressedBytes=($files | Measure-Object Length -Sum).Sum; frameworkBrotliBytes=$brotliBytes
                    trimWarnings=@(Select-String -LiteralPath $log -Pattern 'warning IL\d+' | ForEach-Object { $_.Line })
                }
                Assert-Measurement $measurement $scenario
                $measurements.Add($measurement)
                Save-Results
                Write-Output "$framework/$($scenario.id) : $($inspection.bytes) library bytes ($libraryBr Brotli), $($measurement.retainedIconTypes.Count) retained icon types, $($measurement.publishSeconds)s"
            }
        }
    }
    foreach ($framework in $Frameworks) {
        foreach ($scenario in $plan) {
            $matches = @($measurements | Where-Object { $_.framework -eq $framework -and $_.case -eq $scenario.id })
            if ($matches.Count -ne 1) { throw "Missing or duplicate result: $framework/$($scenario.id)" }
            Assert-Measurement $matches[0] $scenario
        }
    }
    Save-Results
}
finally { Pop-Location }
