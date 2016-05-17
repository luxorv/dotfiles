#!/usr/bin/env sh

# ======================== Symlinks File =============================.

DOTFILES="$HOME/.dotfiles"
TESTHOME="$HOME/testhome"

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


echo -e "\n\nInstalling to ~/.config..."

if [ ! -d $HOME/.config ]; then
    echo "Creating ~/.config"
    mkdir -p $HOME/.config
fi

for config in $DOTFILES/config/*; do
    # Get the basename of the file.
    target=$HOME/.config/$( basename $config )
    # If the file is already there, just print the file. If not link them.
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $config"
        ln -s $config $target
    fi
done

echo -e "\n\nCreating vim symlinks..."

typeset -A vimfiles
vimfiles[~/.vim]=$DOTFILES/config/nvim
vimfiles[~/.vimrc]=$DOTFILES/config/nvim/init.vim

for file in "${vimfiles[@]}"; do
    if [ -e ${file} ]; then
        echo "${file} already exists... skipping"
    else
        echo "Creating symlink for $file"
        ln -s $vimfiles[$file] $file
    fi
done

echo " ==== Finished Creating links for dotfiles! ==== \n"

# ======================== En of Symlinks File ========================.
