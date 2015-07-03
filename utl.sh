#!/bin/bash

# ##############################################################################
#
# utl.sh
#
# Common helpers/aliases for working with bash.
#
# ##############################################################################


# ------------------------------------------------------------------------------
# LEVELUP BASH
# ------------------------------------------------------------------------------

alias cp="cp -r"                          # Recursive by default
alias mkdir="mkdir -pv"                   # Create required and log
alias ls="ls -G"                          # Of course I want color!
alias ll="ls -FGlAhp"                     # Better list implementation

alias ..='cd ../'                         # Go back 1 directory level
alias .1='cd ../'                         # Go back 1 directory level
alias .2='cd ../../'                      # Go back 2 directory levels
alias .3='cd ../../../'                   # Go back 3 directory levels
alias .4='cd ../../../../'                # Go back 4 directory levels
alias .5='cd ../../../../../'             # Go back 5 directory levels
alias .6='cd ../../../../../../'          # Go back 6 directory levels
alias ~="cd ~"                            # Go Home

alias path='echo -e ${PATH//:/\\n}'       # Echo all executable Paths

cd() { builtin cd "$@"; ls; }             # Always list directory contents upon 'cd'
mcd () { mkdir -p "$1" && cd "$1"; }      # mcd: Makes new Dir and jumps inside

# Extract most know archives with one command
# source: http://natelandau.com/my-mac-osx-bash_profile/
# ---
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1     ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar e $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xf $1      ;;
      *.tbz2)      tar xjf $1     ;;
      *.tgz)       tar xzf $1     ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)     echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}