#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza -a1 --icons --sort=type'
alias vi='nvim'
alias vim='nvim'
alias grep='rg'
alias cat='bat -p'
alias pi='sudo pacman -S'
alias pu='sudo pacman -Syu'
alias pr='sudo pacman -Rs'
alias yi='yay -S'
alias yr='yay -R'

export PATH=$PATH:/home/ian/.local/bin
eval "$(starship init bash)"
