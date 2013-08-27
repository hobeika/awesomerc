# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias greps='grep --color=auto --exclude-dir .svn -n'
    alias grepsb='grep --color=auto --exclude-dir .svn --exclude-dir build -n'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias emacs='emacs -nw'
alias l='ls -la'
alias rmtmp='rm -f *~ \#*'
alias ctest='PATH=/usr/lib/ccache:$PATH ctest'
alias makej='make -j 18 $*'
alias maket='ctest -j 18 $*'
alias makexp='maket -D Experimental'
alias makexpx='maket -D Experimental ; xeyes'
alias makejx='make -j 18 ; xeyes'
alias makex='make ; xeyes'
alias gdbrun='/home/vincent/files/bin/utils/gdbrun'

#alias la='ls -A'
#alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# ssh-agent
# if [ -f .ssh-agent ]; then
#     .ssh-agent
# else
#     killall ssh-agent
#     ssh-agent > .ssh-agent
#     ssh-add ~/.ssh/id_rsa
# fi

# Compilation and linking flags
export LDFLAGS="-Wl,--fatal-warnings -Wl,--no-undefined"
export CFLAGS="-Wall"
export CXXFLAGS="-Wall -frounding-math"

export PAGER=most
export EDITOR="emacs -nw"
export SVN_EDITOR="emacs -nw"
alias redshiftme='redshift -l 45.73313:4.82789 -t 5700:3600 -g 0.8 -m vidmode -v &'
alias e='emacs'
alias xe='\emacs'
export QUILT_PATCHES=debian/patches
alias slrnqt='NNTPSERVER=nntp.trolltech.com ; slrn -f /home/vincent/.jnewsrcqt'
alias sidlogin='sudo pbuilder --login --no-targz  --debug --buildplace /sid-root'
alias slrnfree='LANG="fr_FR ISO-8859-1" slrn -f .jnewsrccomp'
DEBEMAIL="vincent.hobeika@gmail.com"
DEBFULLNAME="Vincent Hobeïka"
export DEBEMAIL DEBFULLNAME
alias dmake='PATH=/usr/lib/distcc:$PATH:/home/vincent/files/bin cmake -DCMAKE_CXX_COMPILER:FILEPATH=/usr/lib/distcc/x86_64-linux-gnu-g++-4.4 -DCMAKE_C_COMPILER:FILEPATH=/usr/lib/distcc/x86_64-linux-gnu-gcc-4.4'
alias cachemake='PATH=/usr/lib/ccache:$PATH cmake'
alias dcachemake='export CCACHE_PREFIX="distcc" ; cachemake -DCMAKE_CXX_COMPILER:FILEPATH=/usr/lib/ccache/x86_64-linux-gnu-g++-4.7 -DCMAKE_C_COMPILER:FILEPATH=/usr/lib/ccache/x86_64-linux-gnu-gcc-4.7'

nnano ()
{
    argv=();
    for file in "$@";
    do
        if echo "$file" | /bin/grep -q ':[0-9]\+$'; then
            l="$(echo $file | cut -d: -f2)";
            f="$(echo $file | cut -d: -f1)";
            if [ -e "$f" ]; then
                argv+=("+$l");
                file="$f";
            fi;
        else
            if echo "$file" | /bin/grep -q '~'; then
                f="$(echo $file | cut -d~ -f1)";
                p="$(echo $file | cut -d~ -f2)";
                if [ -e "$f" ]; then
                    l=$(/bin/grep -n "$p" "$f" | cut -d: -f1 | head -n 1);
                    if [ ${#l} != 0 ]; then
                        argv+=("+$l");
                    fi;
                    file="$f";
                fi;
            fi;
        fi;
        argv+=("$file");
    done;
    nano "${argv[@]}"
}

# [ "$(cut -d. -f1 /proc/loadavg)" -gt 2 ] && return
alias sync_key_to_pc='/home/vincent/key/scripts/sync_key_to_pc.sh'
alias sync_pc_to_key='/home/vincent/key/scripts/sync_pc_to_key.sh'

# gpg-agent conf.
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi
GPG_TTY=$(tty)
export GPG_TTY

# work env
source ${HOME}/.bashrc_work
