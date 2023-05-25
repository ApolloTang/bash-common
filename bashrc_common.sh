## Debug Messsages -----------------------------------------------
# echo 'echo from ~/1/1-sy/configurations/bash/common/bashrc_common.sh'

##
# Misc
export editor_main=mvim
export DT=$HOME/Desktop
export HISTCONTROL=ignoredups
shopt -s checkwinsize   # After each command, checks the windows size and changes lines and columns
set -o vi               # Use Vim mode
export LESS=-RFX        # color for Less


##
#/ START - git completion
#/ via homebrew, see:
#/ https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
#/ END  - git completion

# using the above so coment this one out
# ##
# # START - git completion
# if [ -f $dir_scripts1/git-completion/main.bash ]; then
#   . $dir_scripts1/git-completion/main.bash
# fi
# # END  - git completion

##
#/ bash completion settings (actually, these are readline settings)
bind "set completion-ignore-case on" # note: bind used instead of sticking these in .inputrc
bind "set bell-style none"           # no bell
bind "set show-all-if-ambiguous On"  # show list automatically, without double tab

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
if [ ! -f ~/.dirs ]; then  # if doesn't exist, create it
	touch ~/.dirs
fi

alias show='cat ~/.dirs'
save (){
	command sed "/!$/d" ~/.dirs > ~/.dirs1; \mv ~/.dirs1 ~/.dirs; echo "$@"=\"`pwd`\" >> ~/.dirs; source ~/.dirs ;
}
source ~/.dirs       # Initialization for the above 'save' facility: source the .sdirs file
shopt -s cdable_vars # set the bash option so that no '$' is required when using the above facility

