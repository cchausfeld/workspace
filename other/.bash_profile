## Prompt display config ##

## Parse Git Branch ##
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

## Bash prompt display ##
export PS1="\[\e[36m\]\t \[\e[35m\]\w \[\e[92m\]\$(parse_git_branch)\[\033[00m\]$\[\e[m\] "

## Aliases ##
alias gst="git status"
alias please="sudo"
alias fucking="sudo"
alias catbash="cat ~/.bash_profile"
alias refresh="source ~/.bash_profile"
alias cdws="cd /Users/caprice/code/MarleySpoon"
alias be="bundle exec"
alias berci="bundle exec rake ci"
alias dc="docker-compose"
alias fuck="yarn standard --fix"

# git auto-complete
# https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks
source ~/git-completion.bash 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
