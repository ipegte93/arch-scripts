:: Install scoop
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    iwr -useb get.scoop.sh | iex

    scoop install aria2 git
    scoop install add extras

:: Markdown
    scoop install obsidian syncthing

:: Proggramming
    scoop install vscode windows-terminal
    scoop install python dotnet-sdk gcc

    :: Rust
        scoop install pkg-config
        scoop install rustup
        rustup default stable-x86_64-pc-windows-gnu
        rustup component add rust-src rust-analysis

:: Gaming
scoop install discord steam authy

:: For blog
    scoop install hugo

:: etc
scoop install googlechrome bandizip
scoop install cutter ghidra



:: wsl
:: scoop install sudo archwsl
:: sudo dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
:: sudo dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

:: Turn off Windows Defender
sudo REG ADD "hklm\software\policies\microsoft\windows defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f

echo "You have to install Chipset driver and Graphic card driver. And then reboot."
