# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/banbeucmas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export TERM=xterm-256color

PROMPT='%F{12}%n%f@%f%m%f %F{12}%1~%f '

alias toys="~/.scripts/toys"
alias showoff="~/.scripts/showoff"
alias savedot="~/.scripts/dotsave"
alias refresh="source ~/.zshrc"
alias update="yay -Syu"

#alias $DOT_CONFIG ="/mnt/Storages_Linux/Dotfiles/.config"
