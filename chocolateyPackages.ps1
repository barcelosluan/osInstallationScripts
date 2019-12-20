# Chocolatey install
Set-ExecutionPolicy AllSigned
Get-ExecutionPolicy
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco

# Chocolatey tools
choco install -y choco-upgrade-all-at-startup
choco install -y choco-cleaner

# Browsers
choco install -y firefox
choco install -y googlechrome

# Utils
choco install -y 7zip.install
choco install -y adobereader
choco install -y gimp
choco install -y googledrive
choco install -y inkscape
choco install -y potplayer
choco install -y spotify
choco install -y steam
choco install -y transmission
choco install -y oldcalc

# Development
choco install -y brackets
choco install -y cmder
choco install -y git
choco install -y gitkraken
choco install -y mariadb
choco install -y mysql.workbench
choco install -y nginx --params '"/installLocation:C:\Program Files /port:433"'
choco install -y openjdk --params '"/installLocation=C:\Program Files\Java"'
choco install -y putty
choco install -y teamviewer
choco install -y vscode
choco install -y winscp