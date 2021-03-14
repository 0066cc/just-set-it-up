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

export PS1="\[\033]0;[\033[1;35m\]\w\[\033[0m\]\[\033[0m\] > \[\033[m\] "
export PS0='\033[00m'

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
alias mpvv='mpv --config=no --quiet --vo=tct --lavfi-complex="[aid1]asplit[ao][a1];[a1]showwaves=mode=cline:colors=white:rate=12[vo]"'
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
alias nw='feh --recursive --randomize --bg-fill ~/Pictures/Wallpaper/'
alias dwarf="bash /usr/bin/df_linux/df"
alias android="bash /usr/bin/android-studio/bin/studio.sh"
alias webstorm="bash /usr/bin/WebStorm-203.6682.155/bin/webstorm.sh"
alias rss="newsboat"
alias ..="cd .."
alias ...="cd ../../"
alias steezy="mpv https://www.youtube.com/watch?v=rc9cjjEun_k"
alias lofi="mpv https://www.youtube.com/watch?v=5qap5aO4i9A"
alias jazz="mpv https://www.youtube.com/watch?v=Dx5qFachd3A"
alias class="mpv https://www.youtube.com/watch?v=_S802cHbRyk"
alias npr="mpv https://npr-ice.streamguys1.com/live.mp3"
alias study="mpv https://www.youtube.com/watch?v=f4LlaOKXT1U"
alias tet="mpv https://www.youtube.com/watch?v=Ty6m-tL5iQY"
alias vapor="mpv https://www.youtube.com/watch?v=IwJXJ5mhIfM"
alias ambient="mpv https://www.youtube.com/watch?v=UKAmObDUCYA"
alias 90sweb="sudo wondershaper wlx502b73cbad37 56 56"
alias speakit="espeak -m -v en-us -g 0 -p 60 -s 195 -l 4 -f"
alias 90sclear="sudo wondershaper clear wlx502b73cbad37"
alias news="newsboat"
alias jp="git add * ; git commit -m \"Update\" ; git push origin main"
alias cronlog=" grep CRON /var/log/syslog"
alias sleepdrive="udisksctl power-off -b /dev/sdb"
alias resetscreens="bash ~/.screenlayout/reset.sh ; bash ~/.screenlayout/layout.sh"
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
