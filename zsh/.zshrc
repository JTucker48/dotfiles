# ZSH path
fpath+=$HOME/.zsh/pure
fpath+=$HOME/.zsh/aliases
export PATH=/usr/local/go/bin:$PATH

autoload -U promptinit; promptinit

prompt pure

DISABLE_AUTO_UPDATE="true"

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

ZSH_TMUX_AUTOSTART="true"

# Plugins List
plugins=(git tmux)

if [ -z "$SSH_AUTH_SOCK" ] ; then
 eval `ssh-agent -s`
 ssh-add ~/.ssh/github
fi

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

ssh-add ~/.ssh/github
clear

