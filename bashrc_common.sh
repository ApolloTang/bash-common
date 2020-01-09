## Debug Messsages -----------------------------------------------
# echo 'echo from ~/1/1-sy/configurations/bash/common/bashrc_common.sh'

##
# Misc
export editor_main=mvim
export DT=$HOME/Desktop
export HISTCONTROL=ignoredups


bindkey -v              # Use Vim mode | https://stackoverflow.com/questions/58187542/how-to-setup-vi-editing-mode-for-zsh
export LESS=-RFX        # color for Less


##
#/ enable the default zsh completions | https://dev.to/saltyshiomix/a-guide-for-upgrading-macos-to-catalina-and-migrating-the-default-shell-from-bash-to-zsh-4ep3
autoload -Uz compinit && compinit


##
#/ enable git completion | https://stackoverflow.com/questions/26462667/git-completion-not-working-in-zsh-on-os-x-yosemite-with-homebrew
zmodload -i zsh/complist


##
#/ Environment for git-diffc
export TMPDIR=~/tmp    # location of temp folder
export CLEANUP=0       # don't clean up
#/ [note] DO NOT SET GIT_EXTERNAL_DIFF. IF YOU DO git-diffc WILL NOT WORK


