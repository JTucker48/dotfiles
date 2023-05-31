# ZSH path
fpath+=$HOME/.zsh/pure
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
plugins=(git tmux ssh-agent)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

if [ -f ~/.zsh/.aliases ]; then
    source ~/.zsh/.aliases
else
    print "404: ~/.zsh/.aliases not found."
fi
