#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza -a1 --icons --sort=type'
alias vim='nvim'
alias grep='grep --color=auto'
alias i='sudo pacman -S'
alias u='sudo pacman -Syu'
alias r='sudo pacman -Rs'

export PATH=$PATH:/home/ian/.local/bin
eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/catppuccin_mocha.omp.json)"

