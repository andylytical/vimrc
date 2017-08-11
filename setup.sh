#!/usr/bin/bash

function die() {
    echo "FATAL ERROR: $*"
    exit 99
}

function continue_or_exit() {
    local msg="Continue?"
    [[ -n "$1" ]] && msg="$1"
    echo "$msg"
    select yn in "Yes" "No"; do
        case $yn in
            Yes) return 0;;
            No ) exit 1;;
        esac
    done
}

PGM="$0"
PWD=$( pwd )

# Attemp to find absolute path to vimrc
basedn=$( dirname "$PGM" )
workdir=$( readlink -e "$basedn" )
vimrc_fn=${workdir}/vimrc
[[ -f "$vimrc_fn" ]] || die "Unable to find path to vimrc"

# Check for existing .vimrc
[[ -f "$HOME/.vimrc" ]] \
&& continue_or_exit "Can I overwrite your existing .vimrc file?"
rm -f "$HOME/.vimrc"

# SYMLINK .vimrc
ln -s "$vimrc_fn" "$HOME/.vimrc"
