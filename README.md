# Dotfiles for Windows

## Usage

```Powershell
$GitHubAuthor = "BrChung"; `
$GitHubRepo = ".dotfiles-windows"; `
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; `
Invoke-Expression (Invoke-RestMethod -Uri "https://raw.githubusercontent.com/${GitHubRepositoryAuthor}/${GitHubRepositoryName}/main/Bootstrap.ps1");
```
