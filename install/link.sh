#!/usr/bin/env sh

# ======================== Symlinks File =============================.

DOTFILES="$HOME/.dotfiles"

echo " ==== Creating links for dotfiles... ==== \n"

# Iterate the list of symlinks to link them to the $HOME folder.
for file in $(find -H "$DOTFILES" -maxdepth 3 -name '*.symlink') ; do
    # Get the basename of the file with the path on the new folder
    target="$HOME/.$(basename $file '.symlink')"

    # If the file is already there, just print the file. If not link them.
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file"
        ln -s $file $target
    fi
done

echo " ==== Finished Creating links for dotfiles! ==== \n"

# ======================== En of Symlinks File ========================.
