$GitUserName = "BrChung"
$GitUserEmail = "brian@brianchung.co"

Write-Host "Starting setup..." -ForegroundColor "Yellow";
Write-Host "Please don't use the device while the script is running." -ForegroundColor "Yellow";

# Load helpers
$DotfilesHelpersDir = Join-Path -Path $DotfilesSrcDir -ChildPath "Helpers";
Write-Host "Loading helpers:" -ForegroundColor "Green";
$DotfilesHelpers = Get-ChildItem -Path "${DotfilesHelpersDir}\*" -Include *.ps1 -Recurse;
foreach ($DotfilesHelper in $DotfilesHelpers) {
  . $DotfilesHelper;
};

# Save user configuration in persistence
$DotfilesConfigFile = Join-Path -Path $DotfilesDir -ChildPath "config.json";
Set-Configuration-File -DotfilesConfigFile $DotfilesConfigFile -GitUserName $GitUserName -GitUserEmail $GitUserEmail;

# Load user configuration from persistence
$Config = Get-Configuration-File -DotfilesConfigFile $DotfilesConfigFile;

# Register the script to start after reboot
Register-DotfilesScript-As-RunOnce;

Invoke-Expression (Join-Path -Path '&$DotfilesSrcDir' -ChildPath "Chocolatey" | Join-Path -ChildPath "Chocolatey.ps1");
Invoke-Expression (Join-Path -Path '&$DotfilesSrcDir' -ChildPath "Git" | Join-Path -ChildPath "Git.ps1");

# Install Apps
$DotfilesAppsDir = Join-Path -Path $DotfilesSrcDir -ChildPath "Apps";
Write-Host "Installing apps:" -ForegroundColor "Green";
$DotfilesApps = Get-ChildItem -Path "${DotfilesAppsDir}\*" -Include *.ps1 -Recurse;
foreach ($DotfilesApp in $DotfilesApps) {
  . $DotfilesApp;
};

# Clean
# Unregister script from RunOnce
Remove-DotfilesScript-From-RunOnce;