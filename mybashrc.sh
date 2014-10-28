
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

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

cyan='\[\033[0;36m\]'
red='\[\033[0;31m\]'
NC='\[\033[0m\]'

if [ "$color_prompt" = yes ]; then
    export PROMPT_COMMAND='PS1="[${cyan}\u${NC}][$(echo $?)]\w\$ "'
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
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
alias ll='ls -ll'
alias la='ls -A'
alias l='ls -la'
alias rmtmp='rm -f *~ \#* ./.*~'
alias ctest='PATH=/usr/lib/ccache:$PATH ctest'
alias makej='make -j `nproc` $*'
alias maket='ctest -j `nproc` $*'
alias makexp='maket -D Experimental'
alias makexpx='maket -D Experimental ; xeyes'
alias makejx='make -j `nproc` ; xeyes'
alias makex='make ; xeyes'
alias gdbrun='/home/vincent/files/bin/utils/gdbrun'
alias cachemake='PATH=/usr/lib/ccache:$PATH cmake'

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
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
# alias bepo='sudo loadkeys /usr/share/keymaps/i386/dvorak/dvorak-fr-bepo.kmap.gz'
alias bepo='sudo loadkeys ~/files/kmaps/mybepo.kmap.gz'
export QUILT_PATCHES=debian/patches
export DISTCC_HOSTS="127.0.0.1 10.175.9.103 10.175.9.105 10.175.9.119 10.175.9.115 10.175.9.113"
alias policy='zless /usr/share/doc/debian-policy/policy.txt.gz'
export PATH=/usr/lib/ccache:$PATH

################################

# Compilation and linking flags
export LDFLAGS="-Wl,--fatal-warnings -Wl,--no-undefined"
export CFLAGS="-Wall"
export CXXFLAGS="-Wall -frounding-math"

export PAGER=most
export EDITOR="emacs -nw"
export SVN_EDITOR="emacs -nw"
# export SGML_CATALOG_FILES="/etc/sgml/catalog"
alias valgrinc='valgrind --suppressions=/home/vincent/files/projects/cosmo/git/csmSDK/csmCore/Utils/Valgrind/CoSMoKernelValgrind.supp --suppressions=/usr/lib/valgrind/debian-libc6-dbg.supp --suppressions=/usr/lib/valgrind/debian.supp --suppressions=/usr/lib/valgrind/default.supp -q --tool=memcheck --show-below-main=no --leak-check=yes --show-reachable=yes --num-callers=50 --fullpath-after=. $*'
alias e='emacs -nw'
alias xe='\emacs'
alias st='svn st'
alias greps='grep --color=always --exclude-dir .svn --exclude-dir build'
DEBEMAIL="vincent.hobeika@gmail.com"
DEBFULLNAME="Vincent Hobeïka"
export DEBEMAIL DEBFULLNAME
alias sync_pc_to_key='/home/vincent/key/scripts/sync_pc_to_key.sh'
alias sync_key_to_pc='/home/vincent/key/scripts/sync_key_to_pc.sh'
alias dtail='dmesg | tail'
alias dosbox_castle='dosbox -conf ~/.dosbox/castle_adventure.conf'

#alias sidlogin='sudo pbuilder --login --no-targz  --debug --buildplace /sid-root'
if [ -f ${HOME}/.bashrc_aliases ]; then
    . ${HOME}/.bashrc_aliases
fi

# gpg-agent conf.
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi
GPG_TTY=$(tty)
export GPG_TTY

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
alias makej='make -j 10 $*'
alias maket='ctest -j 10 $*'
alias makexp='maket -D Experimental'
alias makexpx='maket -D Experimental ; xeyes'
alias makejx='make -j 10 ; xeyes'
alias makex='make ; xeyes'
alias gdbrun='/home/vincent/files/bin/utils/gdbrun'
alias telnet='rlwrap telnet'

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
export CXXFLAGS="-Wall"
# export CXXFLAGS="-Wall -frounding-math" #CGal stuff

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
alias dcachemake='export CCACHE_PREFIX="distcc" ; cachemake -DCMAKE_CXX_COMPILER:FILEPATH=/usr/lib/ccache/x86_64-linux-gnu-g++-4.4 -DCMAKE_C_COMPILER:FILEPATH=/usr/lib/ccache/x86_64-linux-gnu-gcc-4.4'
export PYTHONPATH='/home/vincent/files/projects/TRHaelPPyerCthon'

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
alias isswallpaper='livestreamer http://www.ustream.tv/channel/iss-hdev-payload best -O | mplayer -  -rootwin -vf scale=1920:1200 -noconsolecontrols'
alias dtail='dmesg | tail'

# gpg-agent conf.
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi
GPG_TTY=$(tty)
export GPG_TTY

# work env
# source ${HOME}/.bashrc_work
