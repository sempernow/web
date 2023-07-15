#!/usr/bin/env bash
#------------------------------------------------------------------------------
#  Functions for Makefile recipes 
# -----------------------------------------------------------------------------


prj() {
    md2html.exe README.md
    find . -type f  -exec chmod 0600 "{}" \+
    find . -type f  -iname 'make.recipes.sh' -exec chmod 0700 "{}" \+
    find . -type f  -iname 'Makefile' -exec chmod 0700 "{}" \+
}

"$@"