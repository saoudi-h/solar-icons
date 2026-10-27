$ErrorActionPreference = 'Stop'
$packageRoot = Split-Path -Parent $PSScriptRoot
Push-Location -LiteralPath $packageRoot
try {
    $node = (Get-Command node -ErrorAction Stop).Source
    function Generate([string[]] $ExtraArguments) {
        & $node --import tsx scripts/generate.ts @ExtraArguments
        if ($LASTEXITCODE -ne 0) { throw 'Generation check failed' }
    }
    Generate @('--check')
    $first = (Get-FileHash -LiteralPath catalogue-manifest.json -Algorithm SHA256).Hash
    Generate @()
    $second = (Get-FileHash -LiteralPath catalogue-manifest.json -Algorithm SHA256).Hash
    if ($first -ne $second) { throw 'Repeated generation was not deterministic' }
    $extra = Join-Path $packageRoot 'src/SolarIcons.Blazor/Generated/unexpected-drift.tmp'
    if(Test-Path -LiteralPath $extra) { throw 'Preserve existing drift fixture and investigate' }
    try {
        Set-Content -LiteralPath $extra -Value 'Intentional drift fixture'
        & $node --import tsx scripts/generate.ts --check *> artifacts/expected-generator-drift.log
        if ($LASTEXITCODE -eq 0) { throw 'Unexpected generated file was not rejected' }
    }
    finally { if(Test-Path -LiteralPath $extra) { Remove-Item -LiteralPath $extra } }
    Generate @('--check')
    [PSCustomObject]@{ passed=$true; deterministic=$true; manifestSha256=$first; extraFileDriftRejected=$true } |
        ConvertTo-Json | Set-Content -LiteralPath artifacts/generator-checks.json
}
finally { Pop-Location }
