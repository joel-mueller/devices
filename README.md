# DeviceToolkit

## TODO

- [ ] Solve web opener better
- [ ] Write a application opener for `app brave`
- [ ] Remove useless homebrew formulas and add only the essential to it, maybe also let the file be given with like `install_formulas essentials.txt`

## Backup the Repositories

```shell
curl https://raw.githubusercontent.com/joel-mueller/devices/refs/heads/main/backup/backup_repositories.sh | sh
```

## Setting Up Ubuntu Machine

### Install Important Packages

```shell
curl https://raw.githubusercontent.com/joel-mueller/devices/refs/heads/main/apt/install.sh | sh
```

> Note: Reload the terminal afterwards, zsh should now be your default terminal, with `echo $SHELL` you see is you run bash or zsh

### Create SSH Key

```shell
ssh-keygen -t rsa -b 4096 -C "joelmueller27@gmail.com"
```

- Then add the public key to the github account
- clone this repository
- [Source Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=linux)

### Link the dotfiles

```shell
./install_dotfiles.sh
```

> Note: Reload the terminal afterwards, all the dotfiles should be linked afterwards
