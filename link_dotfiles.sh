ls $PATH_OF_DOTFILES | xargs -I {} rm -f $HOME/{}
ls $PATH_OF_DOTFILES | xargs -I {} ln -nfs $PATH_OF_DOTFILES/{} $HOME/{}

source .zshrc