#!/usr/bin/env sh

# ======================== Bootstrap File =============================.

dotfiles="$HOME/.dotfiles"

echo " ==== Installing/Updating dotfiles... ==== \n"

# Creating Symlinks
source install/link.sh

if ["$(uname)" == "Darwin"]; then
    echo -e "\n\nRunning on OSX"

    # Install Homebrew and Some packages and applications.
    source brew.sh
    # Set up OSX preferences!
    source osx.sh
fi

echo "Creating neovim directories..."
mkdir -p ~/.vim-tmp

echo "Configuring zsh as default Shell..."
chsh -s $(which zsh)

echo " ==== Finished Installing dotfiles :D ==== \n"

# ======================== End of Bootstrap File =======================.
