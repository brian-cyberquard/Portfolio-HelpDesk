# Podstawowa diagnostyka sieciowa
Write-Host "=== Sprawdzanie konfiguracji IP ==="
Get-NetIPConfiguration | Format-List

Write-Host "`n=== Ping do bramy domyślnej ==="
$gw = (Get-NetRoute -DestinationPrefix '0.0.0.0/0' | Select-Object -First 1).NextHop
if ($gw) { Test-Connection -ComputerName $gw -Count 3 }

Write-Host "`n=== Ping do Google DNS (8.8.8.8) ==="
Test-Connection -ComputerName 8.8.8.8 -Count 3

Write-Host "`n=== Sprawdzenie usługi DNS Client ==="
Get-Service -Name Dnscache
