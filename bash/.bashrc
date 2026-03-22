#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$HOME/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

# pnpm
export PNPM_HOME="/home/faculty/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

export ANDROID_HOME=/opt/android-sdk
export ANDROID_SDK_ROOT=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

# pnpm end
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1='[\[\e[96m\]\u\[\e[0m\]@\[\e[96m\]\h\[\e[0m\] \[\e[92m\]\w\[\e[0m\] | \[\e[93m\]\t\[\e[0m\]] ~ \[\e[91m\]${PS1_CMD1}\[\e[0m\]\\$ '

[ -f "/home/faculty/.ghcup/env" ] && . "/home/faculty/.ghcup/env" # ghcup-env

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$JAVA_HOME/bin:$PATH:$PATH
