#!/bin/bash

# ##############################################################################
#
# _install
#
# 1. Install _bash files
# 2. Symblink _dotfiles
# 3. Source ~/.bash_profile
#
# ##############################################################################

# 1. Install _bash files
# ===
bm install

# 2. Symblink _dotfiles
# ===
CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"
for f in "$CUR_DIR"/_dotfiles/.*; do
  [ -f $f ] && ln $f ~/$(basename $f);
done


# 3. Source ~/.bash_profile
# ===
. ~/.bash_profile
