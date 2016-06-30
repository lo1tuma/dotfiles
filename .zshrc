export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="norm"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LESSCHARSET=utf-8

 . $HOME/.nix-profile/etc/profile.d/nix.sh
