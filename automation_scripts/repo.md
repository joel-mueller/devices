# Installation of repo

## Repo Opener

Make a softlink from the shell script to home

```shell
ln -s devices/config/repo.py .
```

Clone the repository

Move the `repo` script to local bin

```shell
cp $HOME/devices/config/repo /usr/local/bin
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
alias es='eza'
alias tree='tree -C'
alias bat='bat --paging=never'
```

after that, you have to reload

## Add coulours to vim

Create file `~/.vimrc` and add following text into it:

```shell
syntax on
set relativenumber
set number
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
```
