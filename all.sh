#!/bin/bash

# ##############################################################################
#
# all.sh
#
# Sources all sibling shell files. If you would rather, feel free to only
# source individual files.
#
# ##############################################################################


# ------------------------------------------------------------------------------
# REQUIRED HELPERS
# Used for running all sibiling shell scripts.
# ------------------------------------------------------------------------------

function getDir(){
  echo $(builtin cd "$(dirname $1)" && pwd)
}

function getSiblings(){
  echo $(ls $2/*.sh | grep -v $1)
}

function runSiblings(){
  SRC_DIR="$(getDir $1)"

  for FILE in $(getSiblings $1 $SRC_DIR); do
    . $FILE
  done
}


# ------------------------------------------------------------------------------
# IMPORT
# ------------------------------------------------------------------------------

runSiblings ${BASH_SOURCE[0]}
