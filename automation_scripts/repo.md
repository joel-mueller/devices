# Installation of repo

## Repo Opener

Clone the repository

Move the `repo` script to local bin

```shell
cp devices/automation_scripts/repo /usr/local/bin
```

open the `~/.zshrc` config file and add the following path to the `$PATH` variable. When you run a command in the terminal, it searches the `$PATH` for all scripts with that name, so i have to add it that it can be found.

```shell
export PATH="$HOME/.local/bin:$PATH"
```

Reload the `.zshrc` client 

```shell
source .zshrc
```

## Aliases

Aliases can also be added this way in the `.zshrc` file

```shell
alias ll='ls -lah'
alias gs='git status'
```

after that, you have to reload
