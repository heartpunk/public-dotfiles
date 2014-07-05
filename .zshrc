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
alias zprc="vim ~/public-dotfiles/.zshrc&&resource"
alias ls="ls -G"

function color () {
    sed "s/\($1\)/`echo -e '\033[41m\033[37m'`\1`echo -e '\033[0m'`/g"
}

function logtailer () {
  tail -f * | color "==.*=="
}

function resource () {
  source ~/.zshrc
}

make_file () { mkdir -p ${1%/*} && touch $1; }

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
