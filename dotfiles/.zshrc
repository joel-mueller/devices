source $HOME/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# Declare the Aliases
alias d='docker'
alias dc='docker compose'
alias copy='xsel --input --clipboard'
alias paste='xsel --output --clipboard'
alias la='ls -lha'

# Created by `pipx` on 2025-05-03 20:45:29
export PATH="$PATH:/Users/joeldevelop/.local/bin"

# Declare the Functions for opening things fast
web() {
    python3 $HOME/devices/automation_scripts/website_opener.py $1
}

app() {
    open /Applications.$1.app
}

ch() {
    curl cheat.sh/$1
}

# For opening fast the study log
alias s='vim $HOME/notes/hslu/Study_Logs.md'
