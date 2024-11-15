# # Debug Messsages -----------------------------------------------
# echo 'echo from ~/1/1-sy/configurations/bash/common/aliases_common.sh'

###
###  Must have
###
alias ls='LC_COLLATE=C gls -h --group-directories-first --color=auto -F'
  # alias above required GNU installed, works in bash and zsh
  # from https://unix.stackexchange.com/a/317091/62821
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias lld="ls -ld .!(|.)"  #https://askubuntu.com/questions/468901/how-to-show-only-hidden-files-in-terminal
alias h=history
alias rm='rm -i'
alias rmfr='rm -fri'    # not interactive if -ifr; i can not be 1st
alias cdh='cd ~'
alias cddt='cd ~/Desktop/'


# Misc
alias g='grep -i'  # Case insensitive grep
alias f='find . -iname'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias top='top -o cpu'
alias systail='tail -f /var/log/system.log'
alias m='more'
alias df='df -h'
alias iterm='open -a iTerm .'


# Navigation -------------------------------------------------------
alias ..='cd ..'
alias ...='cd .. ; cd ..'

#/ ------------------------------------------------------------------
#/ git
#/
alias gst='git status'
alias gpl='git pull'
alias gps='git push'
alias gc='git commit -v'
alias gca='git commit -v -a'

#/ Next alias will list branch by date. Modified after: https://stackoverflow.com/a/44529712/3136861
alias gb="git for-each-ref --sort=-committerdate refs/heads --format='%(authordate:short) %(color:red)%(objectname:short)%(color:reset) %(color:yellow)%(refname:short)%(color:reset) %(color:blue)%(authorname)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gbc='git rev-parse --abbrev-ref HEAD'   #get current branch

alias gmt='git mergetool --tool p4merge'

alias gdf='git diff --no-ext-diff'

alias gdt='git difftool ' #/ default kdiff3
alias gdt-bc='git difftool -t bcomp '

#/ the next two alias can also work with branch
alias gdd='git difftool --dir-diff '  #/ default kdiff3
alias gdd-bc='git difftool -t bcomp --dir-diff '

alias glog='git log --first-parent --date=format:"%Y-%m-%d %H:%M:%S" --pretty=format:"%h %Cgreen%ad%Creset %Cred%d%Creset %s %Cblue%ae%Creset" '

alias glgl='git log --graph --all --oneline --decorate'
alias glg='git log --graph --all --oneline --decorate -15'

alias glrl='git log --all --oneline --decorate --reverse'
alias glr='git log --all --oneline --decorate --reverse -15'

alias gll='git log --all --oneline --decorate'
alias gl='git log --all --oneline --decorate -15 '

#/ https://stackoverflow.com/questions/7853332/how-to-change-git-log-date-formats
alias  gldl="git log --graph --all --date=format:\"%y-%m-%d %H:%M:%S\" --pretty=format:\"%C(yellow) %h %C(auto) %C(cyan) %cd %Creset %s\""
alias   gld="git log --graph --all --date=format:\"%y-%m-%d %H:%M:%S\" --pretty=format:\"%C(yellow) %h %C(auto) %C(cyan) %cd %Creset %s\" -15"
alias gldol="git log --graph --all --date-order --date=format:\"%y-%m-%d %H:%M:%S\" --pretty=format:\"%C(yellow) %h %C(auto) %C(cyan) %cd %Creset %s\""
alias  gldo="git log --graph --all --date-order --date=format:\"%y-%m-%d %H:%M:%S\" --pretty=format:\"%C(yellow) %h %C(auto) %C(cyan) %cd %Creset %s\" -15"

alias gmerge='git merge --no-ff '
alias gdfni='git diff --no-index '

alias g-stash-ls='git stash list --pretty=format:"%C(red)%h%C(reset) - %C(dim yellow)(%C(bold magenta)%gd%C(dim yellow))%C(reset) %<(70,trunc)%s %C(green)(%cr) %C(bold blue)<%an>%C(reset)"'

#/ Next alias list tag by date of creation,
#/ ref: https://stackoverflow.com/questions/6269927/how-can-i-list-all-tags-in-my-git-repository-by-the-date-they-were-created
alias gtag="git for-each-ref --sort=creatordate --format '%(refname) %(creatordate)' refs/tags"


#/  Utitlities -----------------------------------------------------------
alias aliasl="alias | less"
alias aliasg="alias | grep "

#/ the "kp" alias ("que pasa")
alias kp="ps auxwww"

#/ using sed to build dir tree  http://www.centerkey.com/tree/
alias sed-tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

#/  Application ---------------------------------------------------------

alias k3="kdiff3 "
alias tfm="/usr/local/bin/lf"  # terminal file manager


#/ xterm -----------------------------------------------------------------
# alias xterm='xterm -en en_US.UTF-8 &'


#-------------------------------------------------------------------------------
# Shows most used commands, cool script I got this from: http://lifehacker.com/software/how-to/turbocharge-your-terminal-274317.php
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"


#--------------------------------------------------------------------------
#list dot files
alias find_ln_dotfile='find . -name ".*" -type l -maxdepth 1 -exec ls -al {} +'

# ------------------------------------------------------------------
# React Native
#
alias rn='react-native '


# ------------------------------------------------------------------
# xcode
#
alias simulator-ios='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/'


# ------------------------------------------------------------------
# node
#
alias nodeRlwrap='NODE_NO_READLINE=1 rlwrap node '
alias ggg-pkg-scripts-listing='jq {'scripts'} package.json'


# ------------------------------------------------------------------
# Quick view
#
alias lllAliasCommon='less $pppBashrcCommon/aliases_common.sh'


# ------------------------------------------------------------------
# Misc
#
ggg-pbcopy() {
    # pbcopy that work in linux and mac

    local tmp=$(cat)

    if [[ "$(uname)" == "Darwin" ]]; then
        echo "$tmp" | pbcopy  # macOS (Darwin)
    # Check for Linux and xclip availability
    elif [[ "$(uname)" == "Linux" ]] && command -v xclip &> /dev/null; then
        echo "$tmp" |  xclip -selection clipboard  # Linux (using xclip)
    else
        echo "Error: Unsupported OS or missing xclip on Linux." >&2
        return 1
    fi

    echo "$tmp has been copied to pasteboard"
}

ggg-topbcopy-date1() {
    date_formatted=$(date +'%Y.%m.%d')
    echo "$date_formatted" | ggg-pbcopy
}
ggg-topbcopy-date2() {
    date_formatted=$(date +'%Y-%m-%d')
    echo "$date_formatted" | ggg-pbcopy
}

################################################
#echo '.bash_aliases reading done'
