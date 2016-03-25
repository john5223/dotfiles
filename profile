export EDITOR=vim
alias e=vim

# use color by default
export CLICOLOR=1

# switch bash to vi mode
set -o vi

# default: PS1='\h:\W \u\$'
# hostname cwd $
PS1="\[$(tput setaf 2)\]\h \[$(tput setaf 4)\]\W \[$(tput setaf 10)\]$ \[$(tput sgr0)\]"

