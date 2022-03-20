:: Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

:: Driver
choco install -y amd-ryzen-chipset nvidia-display-driver

:: Programming Environment
choco install -y vscode microsoft-windows-terminal git python deno mingw cmake ninja

:: Gaming Environment
choco install -y authy-desktop discord steam-client origin

:: etc
choco install -y vlc obsidian hugo bandizip paint.net veracrypt

:: wsl
:: scoop install sudo archwsl
:: sudo dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
:: sudo dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

:: Turn off Windows Defender
REG ADD "hklm\software\policies\microsoft\windows defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
