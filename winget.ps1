Set-ExecutionPolicy -Scope CurrentUser Bypass

Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name SearchBoxTaskbarMode -Value 0 -Type DWord -Force;
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowTaskViewButton -Value 0 -Type DWord -Force;
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarDa -Value 0 -Type DWord -Force;
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarMn -Value 0 -Type DWord -Force;


Set-ItemProperty -Path HKCU:\Software\Microsoft\InputMethod\Settings\CHS -Name UserDefinedDoublePinyinScheme0 -Value "xiaohe*2*^*iuvdjhcwfg^xmlnpbksqszxkrltvyovt";


# Disable show frequent/recent files/folders in Quick Access
Write-Host "Disabling show recent files/folders in Quick Access..." -ForegroundColor Green
reg add "hkcu\software\microsoft\windows\currentversion\explorer" /v ShowFrequent /t REG_DWORD /d 0 /f
reg add "hkcu\software\microsoft\windows\currentversion\explorer" /v ShowRecent /t REG_DWORD /d 0 /f

# Disable Edge first run
Write-Host "Disabling Microsoft Edge first run..." -ForegroundColor Green
reg add "hkcu\software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FirstRun" /v "LastFirstRunVersionDelivered" /t REG_DWORD /d 1 /f
reg add "hkcu\software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "IE10TourShown" /t REG_DWORD /d 1 /f
reg add "hkcu\software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "DisallowDefaultBrowserPrompt" /t REG_DWORD /d 1 /f

# Disable Cortana:
Write-Host "Disable Cortana" -ForegroundColor Cyan
reg add "hklm\software\policies\microsoft\windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
reg add "hklm\software\policies\microsoft\windows\Windows Search" /v ConnectedSearchUseWeb /t REG_DWORD /d 0 /f
Write-Host ""

# Configure Search Options:
Write-Host "Configuring Search Options..." -ForegroundColor Green
reg add "hklm\software\policies\microsoft\windows\Windows Search" /v AllowSearchToUseLocation /t REG_DWORD /d 0 /f
reg add "hklm\software\policies\microsoft\windows\Windows Search" /v ConnectedSearchUseWeb /t REG_DWORD /d 0 /f
Write-Host ""

# Disable suggested apps
Write-Host "Disable suggested apps" -ForegroundColor Green
reg add "hklm\software\policies\microsoft\windows\Cloud Content" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f
Write-Host ""

winget uninstall Microsoft.Teams




winget install GyDi.ClashVerge
winget install qBittorrent.qBittorrent 
# winget install Microsoft.PowerShell
winget install Valve.Steam
winget install Tencent.WeChat
winget install Google.Chrome
winget install NetEase.CloudMusic
winget install Microsoft.VisualStudioCode
winget install Telegram.TelegramDesktop
winget install Microsoft.WindowsTerminal
winget install Tencent.QQ
winget install 7zip.7zip
winget install daum.potplayer  --force
winget install sumatrapdf
winget install calibre
winget install Python.Python.3.10
winget install Spotify.Spotify
winget install Git.Git  
winget install Microsoft.PowerToys  

# winget install Tencent.TIM  
