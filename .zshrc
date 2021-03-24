#####################
## Set zsh Options ##
#####################

setopt NO_CASE_GLOB
setopt GLOB_COMPLETE
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL
setopt PROMPT_SUBST # Enable substitution in the prompt

###################
## Prompt config ##
###################

## Parse Git Branch
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats "[ %b ]"
precmd() { vcs_info }

export PROMPT="%F{cyan}%2~ %F{magenta}${vcs_info_msg_0_} %F{green}%#%f "

#############
## Aliases ##
#############

alias gst="git status"
alias please="sudo"
alias fucking="sudo"

export PROJECTS_ROOT="$HOME/workspace"
alias cdws="cd $PROJECTS_ROOT"

## Bash Profile
export BASH_PROF_SRC="~/.zshrc"
alias catbash="cat $BASH_PROF_SRC"
alias vibash="vi $BASH_PROF_SRC"
alias refresh="source $BASH_PROF_SRC"

## Ruby schtuff
alias be="bundle exec"
alias berci="bundle exec rake ci"

## Docker schtuff
alias dc="docker-compose"
alias docker-size="docker system df"

## K8ts schtuff
alias k=kubectl

# kill pods without mercy and grace, e.g. `k delete pod <podname> $die`
export die='--grace-period=0 --force'

# create resource yaml, e.g. `k create pod $do > mypod.yml`
export do='—dry-run=client -o=yaml'

# saves keystrokes when switching namespaces, e.g. `kn something`
alias kn='kubectl config set-context --current --namespace '

