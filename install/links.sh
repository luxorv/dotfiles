#!/usr/bin/env sh

# ======================== Symlinks File =============================.

dotfiles="$HOME/.dotfiles"

echo " ==== Creating links for dotfiles... ==== \n"

linkables = $(find -H $dotfiles -maxdepth 2 -name '*.symlink')

for file in $linkables do
    target = "$HOME/.$(basename $file'.symlink')"
