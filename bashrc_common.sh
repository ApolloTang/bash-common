## Debug Messsages -----------------------------------------------
# echo 'echo from ~/1/1-sy/configurations/bash/common/bashrc_common.sh'

##
# Misc
export editor_main=mvim
export DT=$HOME/Desktop
export HISTCONTROL=ignoredups


bindkey -v              # Use Vim mode | https://stackoverflow.com/questions/58187542/how-to-setup-vi-editing-mode-for-zsh

#/ edit command line in full screen vim editor in ZSH
#/ ref: https://unix.stackexchange.com/a/90529/62821
#/ when edit in line normal mode press 'v' to enter full screen
  export VISUAL=vim
  autoload edit-command-line; zle -N edit-command-line
  bindkey -M vicmd v edit-command-line
#/ bug: after executing command cursol is lost
#/ --------


export LESS=-RFX        # color for Less


###
# set window title in tmux (not working)
# -------------------------------
# https://superuser.com/questions/292652/change-iterm2-window-and-tab-titles-in-zsh
# https://superuser.com/questions/702156/rename-iterm2-tab-from-within-tmux
# http://hints.macworld.com/article.php?story=20031015173932306
DISABLE_AUTO_TITLE="true"
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
echo -ne "\e]1;$PWD\a"


##
#/ enable the default zsh completions | https://dev.to/saltyshiomix/a-guide-for-upgrading-macos-to-catalina-and-migrating-the-default-shell-from-bash-to-zsh-4ep3
autoload -Uz compinit && compinit


##
#/ enable git completion | https://stackoverflow.com/questions/26462667/git-completion-not-working-in-zsh-on-os-x-yosemite-with-homebrew
zmodload -i zsh/complist


##
#/ enable reverse search in zshell | https://unix.stackexchange.com/a/30169/62821
bindkey -v
bindkey "^R" history-incremental-pattern-search-backward


##
#/ Environment for git-diffc
export TMPDIR=~/tmp    # location of temp folder
export CLEANUP=0       # don't clean up
#/ [note] DO NOT SET GIT_EXTERNAL_DIFF. IF YOU DO git-diffc WILL NOT WORK


#-------------------------------------------------------------------------------
# I got the following from, and mod'd it:
# http://hints.macworld.com/article.php?story=20020716005123797
#    The following aliases (save & show) are for saving frequently used directories
#    You can save a directory using an abbreviation of your choosing. Eg. save ms
#    You can subsequently move to one of the saved directories by using cd with
#    the abbreviation you chose. Eg. cd ms  (Note that no '$' is necessary.)
# DOES NOT WORK IN ZSH
#
# if [ ! -f ~/.dirs ]; then  # if doesn't exist, create it
#   touch ~/.dirs
# fi
#
# alias show='cat ~/.dirs'
# save (){
#   command sed "/!$/d" ~/.dirs > ~/.dirs1; \mv ~/.dirs1 ~/.dirs; echo "$@"=\"`pwd`\" >> ~/.dirs; source ~/.dirs ;
# }
# source ~/.dirs       # Initialization for the above 'save' facility: source the .sdirs file
# shopt -s cdable_vars # set the bash option so that no '$' is required when using the above facility

