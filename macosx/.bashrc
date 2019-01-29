set -o vi
alias l='ls -al'
alias md='mkdir'
alias rd='rmdir'
alias ls='ls -G'
alias gs='git status'
alias gpr='git pull --rebase'
alias gri='git rebase --interactive'
alias gb='git branch'
alias gum='git checkout master && git fetch upstream && git merge upstream/master'
alias gr='./gradlew'
alias gitalias='echo "Git aliases: gs, gpr, gri, gb, gum"'
alias ga='gitalias'
alias d='docker'
export PS1="\u@\h:\w$ "

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=/Users/jefftulley/go
export PATH=$PATH:$GOPATH/bin

MAESTRO="maestro.domosoftware.net"
export DH="$MAESTRO:8300"
export MM="$MAESTRO:8720"
export DP="$MAESTRO:8730"
export AD="$MAESTRO:9700"
export IC="$MAESTRO:8200"

alias get='curl -X GET'
alias geti='curl -i -X GET'
alias post='curl -X POST'
alias posti='curl -i -X POST'
alias put='curl -X PUT'
alias puti='curl -i -X PUT'
alias delete='curl -X DELETE'
alias deletei='curl -i -X DELETE'
alias vmstartmin='~/startMinimalDomoVMServices.sh'

export JSON="-H Content-Type:application/json"
export CSV="-H Content-Type:text/csv"
export GZIP="-H Content-Encoding:gzip"

#MAKE GUIDS
alias guid="uuidgen | perl -ne 'print lc' | tr -d '\n' | pbcopy"

# Set different JDK's
alias setJdk6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setJdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

