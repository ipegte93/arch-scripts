:: Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

:: Driver
choco install amd-ryzen-chipset nvidia-display-driver

:: Programming Environment
choco install microsoft-windows-terminal git python deno mingw llvm cmake ninja

:: Gaming Environment
choco install authy-desktop discord steam-client origin

:: etc
choco install vlc obsidian hugo bandizip paint.net

:: wsl
:: scoop install sudo archwsl
:: sudo dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
:: sudo dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

:: Turn off Windows Defender
sudo REG ADD "hklm\software\policies\microsoft\windows defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
