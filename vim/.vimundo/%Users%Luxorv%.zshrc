Vim�UnDo� /
�q���XM��[�����]��*f��   T                                   WK�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             W>W    �         w      ZSH_THEME="agnoster"5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W?�    �         w      ZSH_THEME="robbyrussel"5�_�                    7   	    ����                                                                                                                                                                                                                                                                                                                                                             WI�    �   6   8   w      bplugins=(git ruby golang django scala gem history history-substring-search terminalapp brew nanoc)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             WJ�     �         w      #export ZSH=/Users/Luxorv/.oh-my-zsh5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             WJ�     �         x       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             WJ�     �          x      &# Path to your oh-my-zsh installation.    �         y           �         y       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             WJ�     �          w      &# Path to your oh-my-zsh installation.5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             WJ�     �          x       5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             WJ�     �          y       5�_�   	              
   =        ����                                                                                                                                                                                                                                                                                                                                                             WJ�     �   <   =          :export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"5�_�   
                 =        ����                                                                                                                                                                                                                                                                                                                                                             WJ�     �   <   =          *# export MANPATH="/usr/local/man:$MANPATH"5�_�                    <        ����                                                                                                                                                                                                                                                                                                                                                             WJ�    �   ;   <               5�_�                    X        ����                                                                                                                                                                                                                                                                                                                            X           q           v        WJ�    �   W   Y   u      ## alias ohmyzsh="mate ~/.oh-my-zsh"   function git_prompt_info {   4    local ref=$(=git symbolic-ref HEAD 2> /dev/null)   -    local gitst="$(=git status 2> /dev/null)"       %    if [[ -f .git/MERGE_HEAD ]]; then   -        if [[ ${gitst} =~ "unmerged" ]]; then   =            gitstatus=" %{$fg[red]%}unmerged%{$reset_color%}"           else   =            gitstatus=" %{$fg[green]%}merged%{$reset_color%}"   
        fi   :    elif [[ ${gitst} =~ "Changes to be committed" ]]; then   3        gitstatus=" %{$fg[blue]%}!%{$reset_color%}"   0    elif [[ ${gitst} =~ "use \"git add" ]]; then   2        gitstatus=" %{$fg[red]%}!%{$reset_color%}"   E    elif [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then   5        gitstatus=" %{$fg[yellow]%}*%{$reset_color%}"       else           gitstatus=''       fi           if [[ -n $ref ]]; then   O        echo "%{$fg_bold[green]%}/${ref#refs/heads/}%{$reset_color%}$gitstatus"       fi   }       `PROMPT="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             WKV     �                 Sexport PATH=/Users/Luxorv/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             WKW     �                  5�_�                    :        ����                                                                                                                                                                                                                                                                                                                                                             WK�     �   9   <   Y      source $ZSH/oh-my-zsh.sh5�_�                    :        ����                                                                                                                                                                                                                                                                                                                                                             WK�     �   9   <   Z       5�_�                    :        ����                                                                                                                                                                                                                                                                                                                                                             WK�     �   9   =   [       5�_�                    <        ����                                                                                                                                                                                                                                                                                                                                                             WK�    �   9   ;   \           �   :   <   ]           �   ;   =   ]       5�_�                    >        ����                                                                                                                                                                                                                                                                                                                                                             WK�     �   =   >          Rsource /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh5�_�                    =        ����                                                                                                                                                                                                                                                                                                                                                             WK�     �   <   =           5�_�                    V        ����                                                                                                                                                                                                                                                                                                                                                             WK�     �   U   V          `PROMPT="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'5�_�                    U        ����                                                                                                                                                                                                                                                                                                                                                             WK�     �   T   U           5�_�                    V        ����                                                                                                                                                                                                                                                                                                                                                             WK�     �   U   V          F#PROMPT='%~%<< $(git_prompt_info)${PR_BOLD_WHITE}>%{${reset_color}%} '5�_�                    V        ����                                                                                                                                                                                                                                                                                                                                                             WK�     �   U   V          ;if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi5�_�                     U        ����                                                                                                                                                                                                                                                                                                                                                             WK�    �   T   U           5��