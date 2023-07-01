###       Set Dark Theme and Wallpaper      ###

Write-Host "Setting theme to dark" -ForegroundColor "Green";

# set "app" system mode to "dark"
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Type Dword -Force; 
# set "OS" system mode to "dark"
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0 -Type Dword -Force;