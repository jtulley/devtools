# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jefftulley/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git go golang gradle jsontools ng node npm nvm osx python scala sudo vi-mode)

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export EDITOR='vim'

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
alias reflog="git reflog"
alias cherry-pick="git cherry-pick"
alias ga='gitalias'
alias d='docker'
alias givm='gvim'
alias vi='vim'
alias .='source'
alias gvim='vim'
alias gvs='govendor sync'
alias co='git checkout'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=/Users/jefftulley/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/play/
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"


#MAKE GUIDS
alias guid="uuidgen | perl -ne 'print lc' | tr -d '\n' | pbcopy"

# Set different JDK's
alias setJdk6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setJdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'


# set cursors to use non-shared history by default
bindkey "^[OA" up-line-or-local-history
bindkey "^[OB" down-line-or-local-history

up-line-or-local-history() {
    zle set-local-history 1
    zle up-line-or-history
    zle set-local-history 0
}
zle -N up-line-or-local-history
down-line-or-local-history() {
    zle set-local-history 1
    zle down-line-or-history
    zle set-local-history 0
}
zle -N down-line-or-local-history

# ctrl-cursors will be shared history
bindkey "^[[1;5A" up-line-or-history    # [CTRL] + Cursor up
bindkey "^[[1;5B" down-line-or-history  # [CTRL] + Cursor down

useMavenLocal() {
    setGradleProp useMavenLocal true
}

setGradleProp() {
    export ORG_GRADLE_PROJECT_$1=$2
}

zhelp() {
    myCommands
}

myCommands() {
    echo "Extra zsh commands defined in your .zshrc:"
    echo "useMavenLocal, setGradleProp"
    echo ""
    echo "Aliases:"
    echo "l='ls -al', md='mkdir', rd='rmdir', ls='ls -G', gs='git status', gpr='git pull --rebase', gri='git rebase --interactive',"
    echo "gb='git branch', gum='git checkout master && git fetch upstream && git merge upstream/master', gr='./gradlew', ga='gitalias', d='docker',"
    echo "reflog='git reflog', cherry-pick='git cherry-pick', co='git checkout'"
    myCommands_work
}
source /Users/jefftulley/gitwa/tug/kubernetes-functions.sh
source ~/.zshrc_work
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
