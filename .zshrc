# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="geoffgarside"

# Navigation
alias app='cd ~/Applications'
alias des='cd ~/Desktop/'
alias dev='cd ~/Developer/'
alias doc='cd ~/Documents/'

# Git
alias gst='git status'
alias pull='git pull'
alias push='git push'
alias gbr='git branch'
alias master='git checkout master'
alias gg='git grep'

alias pgstart='pg_ctl start -D /usr/local/var/postgres >logfile 2>&1 &'
alias pgstop='pg_ctl stop -D /usr/local/var/postgres'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh


# User configuration
export PATH="$HOME/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/heroku/bin:/opt/X11/bin:/usr/local/git/bin:/opt/ImageMagick/bin:/usr/local/MacGPG2/bin:$PATH"

# For rbenv
eval "$(rbenv init -)"
