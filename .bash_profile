#!bin/bash
#git stuff
source ~/.git-completion.bash
source ~/.git-prompt.sh

# refresh shell
alias reload='source ~/.bash_profile'

export PATH=/usr/local/bin:$PATH
export PATH=/Users/blevy/bin:$PATH


#Golang stuff
export GOPATH=$HOME/go
export GOBIN=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Users/blevy/go/go_appengine

#Docker stuff
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/Blevz/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

export CLICOLOR=1
export TERM='xterm-256color'

#history
export HISTCONTROL=erasedups:ignoredups
export HISTSIZE=10000
export HISTFILESIZE=10000

#main colors
export BLACK=$(tput setaf 0)
export RED=$(tput setaf 1)
export GREEN=$(tput setaf 2)
export YELLOW=$(tput setaf 3)
export BLUE=$(tput setaf 4)
export MAGENTA=$(tput setaf 5)
export CYAN=$(tput setaf 6)
export WHITE=$(tput setaf 7)

export LIME_YELLOW=$(tput setaf 190)
export POWDER_BLUE=$(tput setaf 153)

export BRIGHT=$(tput bold)
export NORMAL=$(tput sgr0)
export BLINK=$(tput blink)
export REVERSE=$(tput smso)
export UNDERLINE=$(tput smul)

#set prompt
export PS1='\[$POWDER_BLUE\] \h \[$RED\]$(__git_ps1) \[$GREEN\]\w \[$NORMAL\]-> '

# Aliases!
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias edit='sublime'
alias f='open -a Finder ./' # f: Opens current directory in MacOS Finder
alias ~="cd ~"              # ~: Go Home
alias c='clear'
alias h='history'
alias ebp='edit ~/.bash_profile'
alias vbp='vim ~/.bash_profile'
alias umich='ssh blevz@login.engin.umich.edu'
alias um='ssh blevz@login.engin.umich.edu'
alias dboff='killall Dropbox'
alias dbon='open -a Dropbox'

alias ptpg='/Applications/Postgres.app/Contents/Versions/9.3/bin/psql --host=ptdev.ccm2e8gfsxjt.us-west-2.rds.amazonaws.com --username=pundittracker --dbname=ptdev'
alias ptpg2='/Applications/Postgres.app/Contents/Versions/9.3/bin/psql --host=ptdev2.ccm2e8gfsxjt.us-west-2.rds.amazonaws.com --username=pundittracker --dbname=ptdev'

#git aliases
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gd='git diff'
alias gm='git commit -m'
alias gco='git checkout'
alias gpu='git pull'
alias glg="git log --graph --pretty=format:'%C(red)%h%C(reset) -%C(yellow)%d%C(reset) %s %C(green)(%cr) %C(blue)<%an>%C(reset)' --abbrev-commit --date=relative"

#search
alias qfind="find . -name "            # qfind: quick search
ff () { /usr/bin/find . -name "$@" ; } # ff: find in a directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

docker-ip() {
  boot2docker ip 2> /dev/null
}
