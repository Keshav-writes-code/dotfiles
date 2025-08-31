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

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
set -gx VENV_HOME "$HOME/.virtualenvs"
if not test -d $VENV_HOME
    mkdir $VENV_HOME
end
