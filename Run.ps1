$DotfilesDir = $PSScriptRoot
$DotfilesSrcDir = Join-Path -Path $DotfilesDir -ChildPath "src";

# Create Dotfiles folder
if (Test-Path $DotfilesDir) {
  Invoke-Expression '&(Join-Path -Path $DotfilesSrcDir -ChildPath "Setup.ps1")';
}