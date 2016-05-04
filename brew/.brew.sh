# ======================== Brew file ===================================.

# Install homebrew
echo "Installing Homebrew."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install and Configure brew-cask
echo "Configuring Casks..."
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

cask_args appdir: '/Applications'

# Install packages
echo "Installing Packages..."
brew install postgresql
brew install ruby-build
brew install rbenv
brew install unrar
brew install wget
brew install tree
brew install macvim
brew install mysql
brew install tmux
brew install python
brew install mercurial
brew install vim
brew install zsh zsh-completions

# Install apps.
echo "Installing apps."
brew cask install atom
brew cask install dropbox
brew cask install google-chrome
brew cask install spotify
brew cask install virtualbox
