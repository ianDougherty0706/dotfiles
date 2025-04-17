#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza -a1 --icons --sort=type'
alias vim='nvim'
alias grep='rg'
alias cat='bat -p'
alias pi='sudo pacman -S'
alias pu='sudo pacman -Syu'
alias pr='sudo pacman -Rs'
alias yi='sudo yay -S'

export PATH=$PATH:/home/ian/.local/bin
eval "$(oh-my-posh init bash --config ~/dotfiles/.config/oh-my-posh/prompt.omp.json)"

