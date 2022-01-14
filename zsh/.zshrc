# ZSH path
fpath+=$HOME/.zsh/pure
export PATH=/usr/local/go/bin:$PATH

autoload -U promptinit; promptinit

zstyle :prompt:pure:user color 'yellow'
zstyle :prompt:pure:host color 'red'
zstyle :prompt:pure:path color 'blue'

zstyle :prompt:pure:git:branch color 'green'
zstyle :prompt:pure:git:dirty color 'yellow'

zstyle :prompt:pure:git:action color 'red'
zstyle :prompt:pure:git:arrow color 'red'
zstyle :prompt:pure:git:stash color 'red'
zstyle :prompt:pure:execution_time color 'yellow'

zstyle :prompt:pure:virtualenv color 'yellow'

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
alias note="sh /home/josh/.dotfiles/notescript.sh"
