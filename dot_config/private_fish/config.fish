fastfetch

if status is-interactive
    # Commands to run in interactive sessions can go here
end
zoxide init fish | source

test -s /home/keshav/.config/nvm/nvm.fish; and source /home/keshav/.config/nvm/nvm.fish

alias ls='eza'
alias l='eza -l --icons --git'
alias ll='eza -l --icons --git'
alias la='eza -la --icons --git'
alias tree='eza --tree --icons'
