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

# aliases
alias g='git'
alias lambdabot="docker run --rm -it ezoerner/lambdabot-cli"

# git prompt
#source ~/settings/git-prompt.sh

#setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
#precmd () { __git_ps1 "%n" ":%~$ " "|%s" }
#export GIT_PS1_SHOWDIRTYSTATE=1

