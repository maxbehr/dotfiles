export CLICOLOR=1i
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# General
alias j='java'
alias l='ls -lh'
alias la='ls -lah'

# Navigation
alias app='cd ~/Applications'
alias des='cd ~/Desktop/'
alias dev='cd ~/Developer/'
alias doc='cd ~/Documents/'
alias dropbox='cd ~/Dropbox/'
alias workspace='cd ~/Developer/workspace/'

# Editing
alias s='open -a "Sublime Text 2"'

# Git
alias gst='git status'
alias pull='git pull'
alias push='git push'
alias gbr='git branch'
alias master='git checkout master'
alias gg='git grep'

# cd helper
# dirty hack since you cannot define a function called '..' [credits to my last internship for this one]
dotdot() {
        local cdpath=""
        local num=${1:-1}

        while [[ ${num} -gt 0 ]]; do
                cdpath="${cdpath}../"
                num=$((num - 1))
        done

        cdpath="${cdpath}${2}"
        cd ${cdpath}
}

alias ..="dotdot 1"
alias ...="dotdot 2"
alias ....="dotdot 3"

# Show current git branch with every prompt
function git-branch-name {
  git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}
function git-branch-prompt {
  local branch=`git-branch-name`
  if [ $branch ]; then printf " [%s]" $branch; fi
}
PS1="\u@\h \[\033[0;36m\]\W\[\033[0m\]\[\033[0;32m\]\$(git-branch-prompt)\[\033[0m\] \$ "
