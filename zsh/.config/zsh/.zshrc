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
# PROMPT

git_prompt() {export RPROMPT='[$(git_prompt)%~]'
  temp=`git symbolic-ref HEAD 2>/dev/null | cut -d / -f 3`
  if [ "$temp" != "" ]; then echo "[$temp]"; fi
}
setopt prompt_subst
export RPROMPT='%{$fg[red]%}$(git_prompt)'
export PROMPT="%{$fg[cyan]%}[%n%{$fg[magenta]%}@%m%{$fg[cyan]%} %~]$%{$reset_color%} " 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias scr="scrot -t 20 -d 5"
alias ll="ls --color=auto -la"
alias cl="clear"
pfetch
