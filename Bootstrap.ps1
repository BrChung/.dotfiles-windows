# Based on https://github.com/JMOrbegoso/Dotfiles-for-Windows-11

$GitHubAuthor = "BrChung"
$GitHubRepo = ".dotfiles-windows"
$GitHubBranch = "main"
$GitHubRepoUri = "https://github.com/${GitHubAuthor}/${GitHubRepo}/archive/refs/heads/${GitHubBranch}.zip";

$DotfilesDir = Join-Path -Path $HOME -ChildPath "${$GitHubRepo}-test";
$DotfilesSrcDir = Join-Path -Path $DotfilesDir -ChildPath "src";
$RepoZip = Join-Path -Path $HOME -ChildPath "${$GitHubRepo}.zip";

Write-Host "The following is the dotfiles path: ${DotfilesDir}" -ForegroundColor "White";

# # Create Dotfiles folder
# if (Test-Path $DotfilesDir) {
#   Remove-Item -Path $DotfilesDir -Recurse -Force;
# }
# New-Item $DotfilesDir -ItemType directory;

# # Download Dotfiles repository as Zip
# $DownloadResult = $FALSE;
# Try {
#   Invoke-WebRequest $GitHubRepoUri -O $RepoZip;
#   $DownloadResult = $TRUE;
# }
# catch [System.Net.WebException] {
#   Write-Host "Error connecting to GitHub, check the internet connection or the repository url." -ForegroundColor "Red";
# }

# if ($DownloadResult) {
#   Add-Type -AssemblyName System.IO.Compression.FileSystem;
#   [System.IO.Compression.ZipFile]::ExtractToDirectory($RepoZip, $HOME);
#   Invoke-Expression (Join-Path -Path $DotfilesSrcDir -ChildPath "Setup.ps1");
# }