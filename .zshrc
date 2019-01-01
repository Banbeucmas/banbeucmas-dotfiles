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

PROMPT='%F{9}%n%f@%f%m%f %F{9}%1~%f '

alias toys="~/.scripts/toys"
alias showoff="~/.scripts/showoff"
alias savedot="~/.scripts/dotsave"
alias refresh="source ~/.zshrc"
alias update="yay -Syu"
