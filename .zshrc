HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd
unsetopt beep

autoload -Uz compinit
compinit

export PS1="%m:%d| "

alias g="git"
alias zrc="vim ~/.zshrc&&resource"
alias ls="ls --color"

function color () {
    sed "s/\($1\)/`echo -e '\033[41m\033[37m'`\1`echo -e '\033[0m'`/g"
}

function logtailer () {
  tail -f * | color "==.*=="
}

function resource () {
  source ~/.zshrc
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
