# ======================== Alias File. ==============================.

# ------------------------ General. -----------------------------------.

# Shortcuts.
alias _="sudo"
alias g="git"
alias v="vim"
alias vim="nvim"
alias rr="rm -rf"
alias json="json -c"
alias rmf="rm -rf"
alias py2='/usr/local/opt/pyenv/versions/2.7.11/bin/python'
alias py3='/usr/local/opt/pyenv/versions/3.4.4/bin/python'
alias venv2='/usr/local/opt/pyenv/versions/2.7.11/bin/virtualenv'
alias venv3='/usr/local/opt/pyenv/versions/3.4.4/bin/virtualenv'
# Miscellaneous.
alias quit="exit"
alias week="date +%V"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"

# File size
alias fs="stat -f \"%z bytes\""

# Reload zsh config
alias reload!='source ~/.zshrc'

# Enable Alisases to be Sudoed.
alias sudo='sudo '

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# ------------------------ OSX Specifics. ---------------------------.

# iOS Simulator.
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app"

# Start Screen Saver.
alias afk="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

# Log Off.
alias logoff="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Show/Hide Hidden Files.
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Recursively Remove Apple Meta Files.
alias cleanupds="find . -type f -name '*.DS_Store' -ls -exec /bin/rm {} \;"
alias cleanupad="find . -type d -name '.AppleD*' -ls -exec /bin/rm -r {} \;"

# ======================== End of Alias File. =============================.
