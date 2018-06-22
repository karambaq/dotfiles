#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/Users/pq/.zshrc'
# 
# autoload -Uz compinit
# compinit
TERM='screen-256color'
# End of lines added by compinstall
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# set where virutal environments will live
# export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PYTHONDONTWRITEBYTECODE=1
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
# if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
#     source /usr/local/bin/virtualenvwrapper.sh
# else
#     echo "WARNING: Can't find virtualenvwrapper.sh"
# fi
export VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../.././...'
alias neofetch='echo "\\n\\n" && neofetch'

alias ls='colorls'
alias l='colorls'
alias cat=ccat
alias vim=nvim
alias n=nvim
alias t=tmux
alias python=python3
alias p=cd ~/Projects/
alias updatedb=sudo /usr/libexec/locate.updatedb 


RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White



pc(){
    cd ~/Projects/$argv
}


pushit() {
    printf "${Yellow}Adding changes to repository...\n" &&
    git add -A 											&&
    printf "${Blue}Commiting...\n"                      &&
	git commit -m "${1:-':sparkles:'}"                           &&
    printf "${Purple}Pushing...\n"                      &&
	git push                                            &&
    printf "${Cyan}Pushing to heroku...\n"              &&
	git push heroku                                     &&
    printf "${Green}Done!\n"
}

mkcd() {
    [ $# -gt 1 ] && exit 1
    mkdir -p "$1" && cd "$1" || exit 1
}

tre() {
    tree -aC -I \
        '.git|.hg|.svn|.tmux|.backup|.vim-backup|.swap|.vim-swap|.undo|.vim-undo|*.bak|tags' \
        --dirsfirst "$@" \
        | less -R 
}


source ~/.zim/modules/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.zim/modules/zsh-colored-man-pages/colored-man-pages.plugin.zsh
# source ~/.git-prompt.sh
export PYTHONPATH=python3
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
# source ~/mysql-colorize/mysql-colorize.plugin.zsh

# If not running interactively, do not do anything
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux
# [[ $TERM != "screen" ]] && exec tmux

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
#
# # tiny-care-terminal settings
export TTC_WEATHER=Rostov-on-Don
export TTC_REPOS=/Users/pq/Projects/
