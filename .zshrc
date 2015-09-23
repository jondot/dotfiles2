# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump colorize)

source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh

# Customize to your needs...
export GOPATH="$HOME/data/workspaces/golang"
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin:/usr/local/sbin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$HOME/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

eval "$(rbenv init -)"

alias k='kill -9'
alias o='open'
alias b='bundle exec'
alias r='rails'
alias bru='bundle exec rackup'

alias gp='git push origin master'
alias gs='git status'
alias gd='git diff'
alias gco='git checkout'
alias gc='git commit -m'
alias gca='git commit -am'
alias ga='git add .'
alias gb='git checkout -b'
alias gsq='git rebase -i'
alias json='python -mjson.tool | pygmentize -f terminal256 -l javascript -O style=native'
alias m='mvim'
alias gcld='git clone --depth 1'

# assuming having crosscompiling Go distribution.
# brew install go --devel --cross-compile-all
alias go-pi='GOARCH=arm GOARM=5 GOOS=linux go'

~/bin/habits -repeat 5 -show 2

  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
alias dm='docker-machine'

