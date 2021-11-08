# ZSH path
export ZSH="/home/josh/.oh-my-zsh"

ZSH_THEME=""
fpath+=/home/josh/.dotfiles/zsh/.oh-my-zsh/themes/pure
autoload -U promptinit; promptinit

zstyle :prompt:pure:path color yellow



prompt pure

DISABLE_AUTO_UPDATE="true"

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="%d/%m/%y %T"

ZSH_TMUX_AUTOSTART="true"

# Plugins List
plugins=(git tmux)

source $ZSH/oh-my-zsh.sh


if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Aliases
alias v="nvim"
alias vim="nvim"
alias w="cd ~/Documents/GitHub"
alias dotfiles="cd ~/.dotfiles"
alias h="history"
alias hg="history | grep"
alias c="clear"
alias lt="ls --human-readable --size -1 -S --classify"
alias gdwm="cd /usr/local/src/dwm"
