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
github
rectangle
zoom
docker
anki
```

### Formulas

```shell
xargs -I {} brew install {} < brew.txt
```

```txt
git
```

## App Store

Install pages numbers and keynote from app store

## Settings

- Desktop and dock -> turn 'click wallpaper to reveal desktop' to only in stage manager
- Remove the dock

## Finder settings

- New finder window shows Documents (General)
- Show as list
- When performing a search -> search current folder (Advanced)
- Show all filename extensions on (Advanced)
- Finder view and turn Show Toolbar, Show Path Bar and Show Status bar
