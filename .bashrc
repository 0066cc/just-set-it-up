case $- in
    *i*) ;;
    *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

#export PS1="[\033[m]$(tput setaf 2)[$(tput setaf 7)\w$(tput setaf 2)]$(tput setaf 2) > $(tput setaf 7)[\033[m]"
#export PS1="$(tput setaf 2)> $(tput setaf 7)"
export PS1="\[\033]0;\u@\h (\w)\a\]┌─[\[\033[1;36m\]\u@\h\[\033[0m\]][\[\033[1;35m\]\w\[\033[0m\]]\[\033[0m\]\n│ [\[\033[1;33m\]\t   \d\[\033[0m\]]\n└─>\[\033[m\] "

unset color_prompt force_color_prompt

case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u: \w\a\]$PS1"
        ;;
    *)
        ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

alias ls='ls --color=auto'
alias ll='ls -l'
alias gc='gcc -pedantic-errors -Wall -Werror -Wuninitialized  -Wno-unused-result -std=c17'
alias g+='g++ -pedantic-errors -Wall -Werror -Wuninitialized  -Wno-unused-result '
alias weather='curl wttr.in/'
alias mpv='mpv --no-video '
alias m='make'
alias v='vim'
alias c='clear'
alias gp='git pull'
alias x='exit'
alias q='exit'
alias tmuxBar='tmux set status off'
alias yt='youtube-dl --extract-audio -R "infinite" -c --console-title --no-call-home --audio-format mp3 --output "%(title)s.%(ext)s" '
alias ytd=' youtube-dl -R "infinite" -c --console-title --no-call-home --embed-thumbnail'
alias m='make'
alias sleepy='sudo systemctl suspend'
alias nw='feh --recursive --randomize --bg-fill ~/Pictures/Wallpaper/mac'
alias minecraft="/bin/minecraft-launcher/minecraft-launcher"
alias dwarf="bash /usr/bin/df_linux/df"
alias android="bash /usr/bin/android-studio/bin/studio.sh"
alias rss="newsboat"
alias news="newsboat"
alias jp="git add * ; git commit -m \"Update\" ; git push origin main"
alias cronlog=" grep CRON /var/log/syslog"
alias sleepdrive="udisksctl power-off -b /dev/sdb"
alias displays="xrandr --output VGA-1 --primary --mode 1920x1080 --pos 1175x420 --rotate normal --output DP-1 --off --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate right --output DP-2 --off --output HDMI-2 --off"
alias n="nnn"
alias syncit="rsync -avh --delete-after"

if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/bin/android-studio/jre
export REACT_EDITOR=vim
export WINE=/usr/bin/wine
export WINETRICKS=/usr/bin/winetricks
export STEAM_DIR=$HOME/.steam/steam/
export STEAMAPPS=$HOME/.steam/steam/steamapps/
export WINEPREFIX=$HOME/.newprefix
