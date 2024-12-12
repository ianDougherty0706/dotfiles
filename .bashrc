# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lA --color=auto'
alias vim='nvim'
alias hypr='nvim /home/ian/.config/hypr/hyprland.conf'
alias kittyrc='nvim /home/ian/.config/kitty/kitty.conf'
alias t='tmux attach'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export MANPAGER='nvim +Man!'
export PATH=$PATH:/home/ian/.local/bin
eval "$(oh-my-posh init bash --config /home/ian/.cache/oh-my-posh/themes/catppuccin_macchiato.omp.json)"
