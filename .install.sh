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

# Function to symlink the files from the dotfiles folder.
lnif() {
  if [ ! -e $2 ] ; then
    ln -s $1 $2
  fi
}

echo " ==== Installing/Updating dotfiles... ==== \n"

# Check if there's a dotfile folder available if it is pull the new,
# content, if not clone the dotfiles folder.
if [ ! -e $dotfiles/.git ]; then
  echo "Cloning dotfiles\n"
  git clone https://github.com/luxorv/dotfiles.git $dotfiles
else
  echo "Updating dotfiles\n"
  cd $dotfiles && git pull origin develop
fi

# Installing Zsh
echo "Setting up zsh.\n"
lnif $doffiles/zsh/.zlogin $HOME/.zlogin
lnif $doffiles/zsh/.zshrc $HOME/.zshrc
lnif $doffiles/zsh/.zsh_history $HOME/.zsh_history
lnif $doffiles/zsh/.zsh_update $HOME/.zsh_update
lnif $doffiles/zsh/.oh-my-zsh/ $HOME/.oh-my-zsh/

# Installing dev related tools and apps.
echo "Setting up dev tools...\n"
lnif $dotfiles/gitconfig $HOME/.gitconfig
source brew/brew.sh

# Setting up VIM.
echo "Setting up vim...\n"
lnif $dotfiles/vim/.spf13-vim-3/ $HOME/.spf13-vim-3/
lnif $dotfiles/vim/.vim/ $HOME/.vim/
lnif $dotfiles/vim/.vimrc $HOME/.vimrc
lnif $dotfiles/vim/.vimrc.local $HOME/.vimrc.local

# Installing bundles.
echo "Update/Install vim plugins using vundle...\n"
vim -u $dotfiles/spf13-vim-3/.vimrc.bundles +BundleInstall! +BundleClean +qall

# Setting up tmux.
echo "Setting up tmux...\n"
lnif $dotfiles/tmux/.tmux.conf $HOME/.tmux.conf

echo " ==== Finished Installing dotfiles :D ==== \n"
