#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -Hl'
#PS1='[\u@\h \W]\$ '
PS1='\W \$ '

# source ~/.bash/gitprompt.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

## rvm - ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Display the current RVM ruby selection
#PS1="\$($HOME/.rvm/bin/rvm-prompt) $PS1"

# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
