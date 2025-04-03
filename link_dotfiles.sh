PATH_OF_DOTFILES=$HOME/devices/dotfiles

ls -A $PATH_OF_DOTFILES | xargs -I {} rm -f $HOME/{}
ls -A $PATH_OF_DOTFILES | xargs -I {} ln -nfs $PATH_OF_DOTFILES/{} $HOME/{}

source $HOME/.zshrc