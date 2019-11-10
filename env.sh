#!/bin/zsh

# Add commonly used folders to $PATH
export PATH=~/.local/bin:$PATH

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Example aliases
alias g='git'
alias lambdabot="docker run --rm -it ezoerner/lambdabot-cli"
