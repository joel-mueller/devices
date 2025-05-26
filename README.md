# DeviceToolkit

## TODO

- [ ] Solve web opener better
- [ ] Write a application opener for `app brave`
- [ ] Remove useless homebrew formulas and add only the essential to it, maybe also let the file be given with like `install_formulas essentials.txt`

## Backup the Repositories

```shell
curl https://raw.githubusercontent.com/joel-mueller/devices/refs/heads/main/backup/backup_repositories.sh | sh
```

## Install Important Packages

```shell
curl https://raw.githubusercontent.com/joel-mueller/devices/refs/heads/main/apt/install.sh | sh
```

## Create SSH Key

```shell
ssh-keygen -t rsa -b 4096 -C "joelmueller27@gmail.com"
```
