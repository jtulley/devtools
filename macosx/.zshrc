# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jefftulley/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode adb ant golang iterm2 jira man python tmux sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias l='ls -al'
alias md='mkdir'
alias rd='rmdir'
alias ls='ls -G'

alias gs='git status'
alias gpr='git pull --rebase --recurse-submodules'
alias gsu='git submodule update --remote'
alias gri='git rebase --interactive'
alias gb='git branch'
alias gum='git checkout master && git fetch upstream && git merge upstream/master'
alias amend='git commit --amend'
alias cherry-pick='git cherry-pick'
alias chpi='git cherry-pick'
alias reflog='git reflog'
alias co='git checkout'

gpo() {
    if [ -n "$1" ]; then
      git push origin HEAD:$@
    else
      echo usage: gpo "branch-name"
      echo converts to git push origin HEAD:"branch-name"
    fi
}

gsp() {
    if [ -n "$1" ]; then
      git stash pop stash@{$1}
    else
      git stash pop
    fi
}

unalias gsh
gsh() {
    if [ -n "$1" ]; then
      git show HEAD~$1
    else
      git show
    fi
}

unalias gsd
gsd() {
    if [ -n "$1" ]; then
      git stash drop stash@{$1}
    else
      git stash drop
    fi
}

gsl() {
    if [ -n "$1" ]; then
      git stash show -p stash@{$1}
    else
      git stash list
    fi
}

gitalias() {
  alias gs
  alias gpr
  alias gsu
  alias gri
  alias gb
  alias gum
  alias amend
  alias cherry-pick
  alias chpi
  alias reflog
  alias co
  echo "gpo <branch name>='git push origin HEAD:<branch name>'"
  echo "gsl='git stash list'"
  echo "gsd='git stash drop'"
  echo "gsp='git stash pop'"
  echo "gsl <number>='git stash show stash@{<number>}'"
  echo "gsd <number>='git stash drop stash@{<number>}'"
  echo "gsp <number>='git stash pop stash@{<number>}'"
  echo "gsh <number>='git show HEAD~<number>'"
}

alias ga='gitalias'

alias gr='./gradlew'
alias d='docker'

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
alias setJdk11='export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"'

export ANDROID_SDK_ROOT=~/Library/Android/sdk/

export _JAVA_OPTIONS=-Djava.io.tmpdir=/Users/jefftulley/tmp
source ~/.zshrc_work
