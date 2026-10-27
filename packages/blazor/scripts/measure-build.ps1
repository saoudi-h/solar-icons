$ErrorActionPreference = 'Stop'
$packageRoot = Split-Path -Parent $PSScriptRoot
Push-Location -LiteralPath $packageRoot
try {
    $results = [System.Collections.Generic.List[object]]::new()
    & dotnet restore src/SolarIcons.Blazor --nologo
    if ($LASTEXITCODE -ne 0) { throw 'Library restore failed' }
    foreach ($kind in @('rebuild', 'incremental')) {
        $log = Join-Path $packageRoot "artifacts/build-$kind.log"
        $arguments = @('build', 'src/SolarIcons.Blazor', '-c', 'Release', '--no-restore', '--nologo', '-p:UseSharedCompilation=false')
        if ($kind -eq 'rebuild') { $arguments += '-t:Rebuild' }
        $timer = [Diagnostics.Stopwatch]::StartNew()
        & dotnet @arguments *> $log
        $buildExit = $LASTEXITCODE
        $timer.Stop()
        if ($buildExit -ne 0) { Get-Content -LiteralPath $log -Tail 20; throw "Library $kind failed" }
        $results.Add([PSCustomObject]@{ kind = $kind; seconds = [Math]::Round($timer.Elapsed.TotalSeconds, 2); warnings = @(Select-String -LiteralPath $log -Pattern ': warning ').Count })
        Write-Output "$kind : $($results[-1].seconds) seconds"
    }
    $catalogue = Get-Content -Raw catalogue-manifest.json | ConvertFrom-Json
    [PSCustomObject]@{
        sdk = (& dotnet --version); targetFramework = 'net8.0'; generatedTypes = $catalogue.componentTypes
        generatedHash = $catalogue.generatedHash; sharedCompilation = $false
        restoreIncluded = $false; generatedFilesAlreadyPresent = $true
        libraryBytes = (Get-Item src/SolarIcons.Blazor/bin/Release/net8.0/SolarIcons.Blazor.dll).Length
        measurements = $results
    } | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath artifacts/build-results.json
}
finally { Pop-Location }
