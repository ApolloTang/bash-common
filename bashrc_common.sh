## Debug Messsages -----------------------------------------------
# echo 'echo from ~/1/1-sy/configurations/bash/common/bashrc_common.sh'

##
# Misc
export editor_main=mvim
export DT=$HOME/Desktop
export HISTCONTROL=ignoredups
shopt -s checkwinsize   # After each command, checks the windows size and changes lines and columns
bindkey -v              # Use Vim mode | https://stackoverflow.com/questions/58187542/how-to-setup-vi-editing-mode-for-zsh

#/ enable the default zsh completions | https://dev.to/saltyshiomix/a-guide-for-upgrading-macos-to-catalina-and-migrating-the-default-shell-from-bash-to-zsh-4ep3
autoload -Uz compinit && compinit

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


