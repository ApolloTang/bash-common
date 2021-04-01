# # Debug Messsages ------------------------------------------------
# echo 'echo from ~/1/1-sy/configurations/bash/common/prompt.sh'

#/ Prompts ----------------------------------------------------------
# export PS1="\[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]"  # Primary prompt with only a path
# export PS1="\[${COLOR_GRAY}\]\u@\h \[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]"  # Primary prompt with user, host, and path
export PS1="\[${COLOR_GREEN}\]\w
$ \[${COLOR_NC}\]"
# This runs before the prompt and sets the title of the xterm* window.  If you set the title in the prompt
# weird wrapping errors occur on some systems, so this method is superior
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"'  # user@host path
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}"; echo -ne "\007"'  # user@host path

export PS2='> '    # Secondary prompt
export PS3='#? '   # Prompt 3
export PS4='+'     # Prompt 4

function xtitle {  # change the title of your xterm* window
  unset PROMPT_COMMAND
  echo -ne "\033]0;$1\007"
}



