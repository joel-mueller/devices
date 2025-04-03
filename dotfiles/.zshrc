export PATH="$HOME/.local/bin:$PATH"
alias es='eza'
alias tree='tree -C'
alias bat='bat --paging=never'
GITHUB_URL="https://github.com"
GITHUB_NAME="joel-mueller"
repo() {
    open "$GITHUB_URL/$GITHUB_NAME/$1"
}
