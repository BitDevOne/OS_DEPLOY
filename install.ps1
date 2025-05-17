Start-Sleep -Seconds 60
$config = Get-Content .\config.json | ConvertFrom-Json
foreach ($app in $config.apps) {
    winget install --id $app -e --accept-source-agreements --accept-package-agreements
}
