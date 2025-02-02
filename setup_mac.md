# Setup new Mac

Setup and login to apple id
Make sure the passwords are all synchronized

## Homebrew

Download Homebrew from the site -> https://brew.sh

### Cask

```shell
xargs -I {} brew install --cask {} < apps.txt
```

```txt
visual-studio-code
spotify
discord
brave-browser
rectangle
zoom
docker
anki
microsoft-outlook
firefox
libreoffice
intellij-idea-ce
pycharm-ce
pdfsam-basic
```

### Formulas

```shell
xargs -I {} brew install {} < brew.txt
```

```txt
wget
git
maven
tldr
cheat
mailsy
speedtest-cli
wifi-password
mpv
yt-dlp
ffmpeg
ocrmypdf
pandoc
ctop
tectonic
htop
go
tree
ipcalc
bat
openjdk@21
cloc
shellcheck
```

Alias for bat: `alias batcat="bat --paging=never"`

## App Store

- Pages
- Numbers
- Keynote
- Amphetamine (Using mac with lid closed without charging on monitor) -> https://apps.apple.com/ch/app/amphetamine/id937984704?l=en-GB&mt=12

## Settings

- Desktop and dock -> turn 'click wallpaper to reveal desktop' to only in stage manager
- Remove the dock

## Finder settings

- New finder window shows Documents (General)
- Show as list
- When performing a search -> search current folder (Advanced)
- Show all filename extensions on (Advanced)
- Finder view and turn Show Toolbar, Show Path Bar and Show Status bar

## Java

Install java from the oracle website here -> https://www.oracle.com/java/technologies/downloads/#java21

## Python

Wird bereits mit Homebrew heruntergeladen, danach in virtual environments arbeiten

## Main iCloud Mac

Habe ich noch von fruher aber ist mehr relevant wenn man main iCloud macht

```txt
Namen Joel‘s Mac auf Computer änder
Freigaben abschalten
Datenschutzeinstellungen
File Vault ein
Firewall ein
Passwort auf sofort
Nur Download aus App Store
Display an zeit verkürzen
Pages, Numbers, Keynote
Programme in Dock
Bildschirmschoner deaktivieren
Sprache Tastatur nicht oben zeigen
Siri bei gespertem gerät ausschalten
Benachrichtigungen ausschalten
```

## SSH Key for github

generate ssh key

```shell
ssh-keygen -t rsa -b 4096 -C "<name>"
```

or

```shell
ssh-keygen -t ed25519 -C "<name>"
```

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Add keypair to github

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

Copy the key to the server

```shell
ssh-copy-id -i .ssh/id_ed25519.pub user@server
```


