Set-ExecutionPolicy -Scope CurrentUser Bypass

Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name SearchBoxTaskbarMode -Value 0 -Type DWord -Force;
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowTaskViewButton -Value 0 -Type DWord -Force;
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarDa -Value 0 -Type DWord -Force;
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarMn -Value 0 -Type DWord -Force;





winget uninstall Microsoft.Teams




winget install Fndroid.ClashForWindows
winget install qBittorrent.qBittorrent 
winget install Microsoft.PowerShell
winget install Valve.Steam
winget install Tencent.WeChat
winget install Google.Chrome
winget install NetEase.CloudMusic
winget install Microsoft.VisualStudioCode
winget install Telegram.TelegramDesktop
winget install Microsoft.WindowsTerminal
winget install Tencent.QQ
winget install 7zip.7zip
winget install daum.potplayer
winget install sumatrapdf
winget install Python.Python.3.10
winget install calibre
winget install Spotify.Spotify
winget install Git.Git  
winget install Microsoft.PowerToys  

winget install Tencent.TIM  

