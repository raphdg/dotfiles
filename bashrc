#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -Hl'

# Git and prompt
PS1='\W \$ '
if [ -f ~/.git-prompt.sh ] ; then
    source ~/.git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    PS1='\W$(__git_ps1 " (%s)") \$ '
fi
export PS1


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

## rvm - ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Display the current RVM ruby selection
#PS1="\$($HOME/.rvm/bin/rvm-prompt) $PS1"

# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
