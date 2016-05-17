# ======================== Zsh File ===================================.

echo "Installing oh-my-zsh plugin for zsh..."
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

echo "Configuring zsh as default Shell..."
chsh -s $(which zsh)

# ======================== End of Zsh file ===================================.
