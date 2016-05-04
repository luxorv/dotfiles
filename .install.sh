#!/usr/bin/env sh

# ======================== Install File =============================.

dotfiles="$HOME/.dotfiles"

# to error out
warn() {
  echo "$1" >&2
}

die() {
  warn "$1"
  exit 1
}

echo " ==== Installing/Updating dotfiles... ==== \n"

# Check if there's a dotfile folder available if it is pull the new,
# content, if not clone the dotfiles folder.
if [ ! -e $dotfiles/.git ]; then
  echo "Cloning dotfiles...\n"
  git clone https://github.com/luxorv/dotfiles.git $dotfiles
else
  echo "Updating dotfiles...\n"
  cd $dotfiles && git pull origin develop
fi

# Installing Zsh
echo "Setting up zsh...\n"
ln -s $doffiles/zsh/.zlogin $HOME/.zlogin
ln -s $doffiles/zsh/.zshrc $HOME/.zshrc
ln -s $doffiles/zsh/.zsh_history $HOME/.zsh_history
ln -s $doffiles/zsh/.zsh_update $HOME/.zsh_update
ln -s $doffiles/zsh/.oh-my-zsh/ $HOME/.oh-my-zsh/

# Installing dev related tools and apps.
echo "Setting up dev tools...\n"
ln -s $dotfiles/.gitconfig $HOME/.gitconfig
source $dotfiles/brew/brew.sh

# Setting up VIM.
echo "Setting up vim...\n"
ln -s $dotfiles/vim/.spf13-vim-3/ $HOME/.spf13-vim-3/
ln -s $dotfiles/vim/.vim/ $HOME/.vim/
ln -s $dotfiles/vim/.vimrc $HOME/.vimrc
ln -s $dotfiles/vim/.vimrc.local $HOME/.vimrc.local

# Installing bundles.
echo "Update/Install vim plugins using vundle...\n"
vim -u $HOME/.spf13-vim-3/.vimrc.bundles +BundleInstall! +BundleClean +qall

# Setting up tmux.
echo "Setting up tmux...\n"
ln -s $dotfiles/tmux/.tmux.conf $HOME/.tmux.conf

echo " ==== Finished Installing dotfiles :D ==== \n"
