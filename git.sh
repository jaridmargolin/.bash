#!/bin/bash

# ##############################################################################
#
# git.sh
#
# Common shortcuts and helpers for more efficiently working with git.
#
# ##############################################################################


# ------------------------------------------------------------------------------
# Shortcuts
# ------------------------------------------------------------------------------

alias gac="git commit -a -m"
alias gcb="git checkout -b"
alias gdb="git branch -d"
alias gdrb="git push origin :"

alias gfr="git fetch; git rebase"
alias gl="git log --pretty=format:'%C(bold yellow)%h%x09%C(reset)%C(bold cyan)%ad: %an%n%s%n' --date=local"
alias gls="git log --pretty=format:'%C(bold yellow)%h%x09%C(reset)%s'"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold yellow)%h %d%n  %C(bold)%ad: %an%n''  %C(white)%s%C(reset) %C(dim white)%n' --date=local --all"

gcrb () { git fetch; git checkout -b "$1" origin/"$1"; }
