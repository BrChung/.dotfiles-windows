# Dotfiles for Windows

## Usage

```Powershell
$GitHubAuthor = "BrChung"; `
$GitHubRepo = ".dotfiles-windows"; `
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; `
Invoke-Expression (Invoke-RestMethod -Uri "https://raw.githubusercontent.com/${GitHubAuthor}/${GitHubRepo}/main/Bootstrap.ps1");
```

```Powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; `
Invoke-Expression "&'C:\GitHub\.dotfiles-windows/Run.ps1'";
```
