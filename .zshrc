# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="afowler"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(apache2-macports bower cabal colored-man drush git macports npm osx rebar golang web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

## ENVIRONMENT VARIABLES ##

export GEM_HOME="$HOME/.gem"

# DO NOT FORGET TO UPDATE /etc/launchd.conf !!!
export GOROOT="$HOME/.programs/go"
export GOBIN="$GOROOT/bin"
export GOPATH="$HOME/.programs/go-contrib:$HOME/prog/go"
export GOOS="darwin"
export GOARCH="amd64"

export PATH="$HOME/bin:$GOBIN:/opt/local/bin:/opt/local/sbin:/opt/local/apache2/bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/MacGPG2/bin:/sbin:/usr/sbin:$HOME/Library/Haskell/bin:$HOME/pxbin:$HOME/prog/php/drush:$HOME/.gem/bin"
# export MANPATH="/usr/local/man:$MANPATH"

export EDITOR='vim'

## ALIASES ##

alias ll='ls -lhaeF'
alias l='ls'
alias ssh='ssh -C'
alias mysql='mysql5 -u root'
alias mysqldump='mysqldump5 -u root'
alias z='7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on'
alias webserv='python -m SimpleHTTPServer'
alias gsci='git svn fetch && git svn rebase && git svn dcommit'
alias gsup='git svn fetch && git svn rebase'
alias gap='git add -p'
alias gc='git commit -S -m'
alias gca='git commit -S -a -m'
alias gcaa='git commit -S -a --amend'
alias gstat='git status'
alias gdiff='git diff'
alias gdiffc='git diff --cached'
alias gsom='git push origin master'
alias glom='git pull origin master'
alias gso='git push origin'
alias glo='git pull origin'
alias gpa='git push --all'
alias gsync='git pull origin && git push origin'
alias gsyncm='git pull origin master && git push origin master'
alias gpp='git pull && git push'
alias ack='ack-grep'
alias up='sudo aptitude update && sudo aptitude full-upgrade'
alias pdfmerge='gs -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=output.pdf'
alias drupal-user-reset='drush php-eval "user_save(user_load(1), array(\"pass\" => \"a\"));"'
alias p='sudo port'
alias ps='port search'
alias pi='sudo port install'
alias pup='sudo port selfupdate && sudo port upgrade outdated'
alias g='git'
alias gcas='git commit -a -m "Updates submodules."'
alias startftp='sudo -s launchctl load -w /System/Library/LaunchDaemons/ftp.plist'
alias c='pbcopy'
alias v='pbpaste'
alias go='GOPATH="$GOPATH:`pwd`" go'
alias closure="java -jar /Users/yorirou/.programs/closure-compiler.jar"
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias pw='pwgen $((RANDOM%32+6)) 1'
alias composer='php55 ~/prog/php/composer/composer.phar'

alias -s jar='java -jar'

unalias sl

## COLOR SCHEME ##

if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{${fg_bold[green]}%}:: %{$reset_color%}%{${fg[blue]}%}%3~ $(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}»%{${reset_color}%} '

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
