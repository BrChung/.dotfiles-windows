### Show File Extensions and Taskbar Icons ###
# http://superuser.com/questions/666891/script-to-set-hide-file-extensions

Write-Host "Showing file extensions" -ForegroundColor "Green";

Push-Location
Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
Set-ItemProperty . HideFileExt "0"
Pop-Location

# Not sure if this works
# Write-Host "Updating registry key to always show all taskbar items..." -ForegroundColor "Green";
# $registryPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer";
# If ( !(Test-Path $registryPath) ) {New-Item -Path $registryPath -Force; }
# New-ItemProperty -Path $registryPath -Name "EnableAutoTray" -PropertyType DWORD -Value 0 -Force;

Write-Host "Require double-click to open an item" -ForegroundColor "Green";
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V ShellState /T REG_BINARY /D 240000003ea8000000000000000000000000000001000000130000000000000062000000 /F