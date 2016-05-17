export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export EDITOR='vim'
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
