if [ -f $HOME/.bashrc ]; then
   source $HOME/.bashrc
fi

export GITAWAREPROMPT=$HOME/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

export PATH="$HOME/Library/Haskell/bin:$PATH"

export PATH=$HOME/bin:$HOME/Developer/workspace/squid_toolkit:$PATH
export PATH=$HOME/Developer/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export EDITOR=vim


function setjdk() {  
  if [ $# -ne 0 ]; then  
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'  
   if [ -n "${JAVA_HOME+x}" ]; then  
    removeFromPath $JAVA_HOME  
   fi  
   export JAVA_HOME=`/usr/libexec/java_home -v $@`  
   export PATH=$JAVA_HOME/bin:$PATH  
  fi  
  echo JAVA_HOME set to $JAVA_HOME  
  java -version  
 } 
 
 function removeFromPath() {  
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")  
 }

alias python=python3
alias pip=pip3

alias kc='kubectl $@' 
alias kcc='kubectl config current-context'

alias goa="docker run --rm -it ezoerner/goa:1.0"
alias lambdabot="docker run --rm -it ezoerner/lambdabot-cli"
#set -o vi

#stack ghci --package turtle

alias p="psql -U tripshot -d tripshot -h localhost "

