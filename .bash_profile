#!/bin/bash

# ##############################################################################
#
# .bash_profile
#
# Sources all files in directory matching the pattern ".bash_profile_*"
#
# ##############################################################################


# ------------------------------------------------------------------------------
# REQUIRED HELPERS
# ------------------------------------------------------------------------------

. ".bash_helpers"


# ------------------------------------------------------------------------------
# IMPORT
# ------------------------------------------------------------------------------

runSiblings ${BASH_SOURCE[0]} ".bash_*.sh"
