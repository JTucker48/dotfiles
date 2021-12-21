# ZSH path
fpath+=$HOME/.zsh/pure
export PATH=/usr/local/go/bin:$PATH

autoload -U promptinit; promptinit

zstyle :prompt:pure:user color '#af87d7'
zstyle :prompt:pure:host color '#5faf5f'
zstyle :prompt:pure:path color '#00afaf'

zstyle :prompt:pure:git:branch color '#5faf5f'
zstyle :prompt:pure:git:dirty color '#af87d7'

zstyle :prompt:pure:git:action color '#af005f'
zstyle :prompt:pure:git:arrow color '#af005f'
zstyle :prompt:pure:git:stash color '#af005f'
zstyle :prompt:pure:execution_time color '#af87d7'

zstyle :prompt:pure:virtualenv color '#af87d7'

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

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

ssh-add ~/.ssh/github
clear

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
alias fixaudio="systemctl --user restart pulseaudio.service"
