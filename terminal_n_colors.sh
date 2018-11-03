# # Debug Messsages ------------------------------------------------
# echo 'echo from ~/1/1-sy/configurations/bash/common/terminal-n-colors'


## ls color ------------------------------------------------
#/ Ref:
#/   http://www.linux-sxs.org/housekeeping/lscolors.html
#/   https://unix.stackexchange.com/questions/2897/clicolor-and-ls-colors-in-bash
#/   man ls
#/


#/ CLICOLOR will turn colors on or off
export CLICOLOR=1


#/ -G option is equivalent to defining CLICOLOR in the environment.
# alias ls='ls -G'            #/ OS-X SPECIFIC - the -G command in OS-X is for colors, in Linux it's no groups
# alias ls='ls --color=auto'  #/ For linux, etc


#/ LS_COLORS let you customize you the colors, but is not required
#/ Note that on some operating systems (Like MacOSX and FreeBSD),
#/      the value is named LSCOLORS, not LS_COLORS.

#/ [OSX]
#/ use this for black background
# export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#/ use this for white background
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#/ ref: http://apple.stackexchange.com/questions/33677/how-can-i-configure-mac-terminal-to-have-color-ls-output

#/ [Linux]
# export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rb=90'





## GREP color --------------------------------------------------
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'




#export TERM=xterm-color
#/ comment out the above apprently it is causing tmux to overwrite instead of insert
#/ https://groups.google.com/forum/#!topic/tmux-users/HcKnBs5uJds
#/ http://unix.stackexchange.com/questions/1045/getting-256-colors-to-work-in-tmux

#export TERM=xterm-256color
#/ Do not set TERM in shell configuration.
#/ Your terminal (OSX Terminal) should set TERM, this should not be done in the shell.
#/ http://superuser.com/questions/234922/what-should-term-be-on-mac-osx-10-6-6
#/ http://unix.stackexchange.com/questions/139082/zsh-set-term-screen-256color-in-tmux-but-xterm-256color-without-tmux



##
# Colors ----------------------------------------------------------


#/ Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m's
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[1;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

alias colorslist="set | egrep 'COLOR_\w*'"  # Lists all the colors, uses vars in .bashrc_non-interactive




