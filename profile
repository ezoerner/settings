export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

export PATH=~/bin:~/Developer/workspace/squid_toolkit:$PATH
export CONSCRIPT_HOME="$HOME/.conscript"
export CONSCRIPT_OPTS="-Dfile.encoding=UTF-8"
export PATH=$CONSCRIPT_HOME/bin:$PATH
export PATH=~/Developer/bin:$PATH
export PATH=~/.local/bin:$PATH

cloud() { ssh_me_calmly -i ~/.ssh/${1}.pem -u kratos -h $2 ; }

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

alias scalariform="scalariform -p=/Users/ezoern/Dropbox/user/Developer/settings/scalariform.properties -r"

alias goa="docker run --rm -it ezoerner/goa"
alias lambdabot="docker run --rm -it ezoerner/lambdabot-cli"
#set -o vi

#stack ghci --package turtle
