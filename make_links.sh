#!/bin/sh

function make_link () {
    [ ! -e ~/$1 ] && [ -e ~/public-dotfiles/$1 ] && echo "making link to $1" && ln -s ~/public-dotfiles/$1 ~/$1
}

make_link .gitconfig
make_link .gitignore_global
