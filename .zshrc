export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(
			nvm
			git
			zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

# User configuration
alias vim="nvim"
alias vi="nvim"
# alias tmux="TERM=screen-256color-bce tmux"
