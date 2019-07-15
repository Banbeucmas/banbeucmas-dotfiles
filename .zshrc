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

PROMPT='%F{11}%n%F{3}@%F{3}%m%f %F{11}%8~%F{11} '

alias toys="~/.scripts/toys"
alias patchart="~/.scripts/patchart"
alias showoff="~/.scripts/showoff"
alias savedot="~/.scripts/dotsave"
alias refresh="source ~/.zshrc"
alias update="yay -Syu"
alias toufetch="~/.toys/blue_reimu_fetch"
alias mpd_albumcover="~/.scripts/mpd_albumcover"

#alias $DOT_CONFIG ="/mnt/Storages_Linux/Dotfiles/.config"
