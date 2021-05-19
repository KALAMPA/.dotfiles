# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/grigory/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
zstyle ':completion:*' menu select
ttyctl -f
autoload -U colors && colors
prompt redhat
export PROMPT="%{$fg[cyan]%}[%n%{$fg[magenta]%}@%m%{$fg[cyan]%} %~]$%{$reset_color%} " 
export RPROMPT=''
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias scr="scrot -t 20 -d 5"
