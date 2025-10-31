# editor
export EDITOR=nvim

if command -v neofetch >/dev/null
    fastfetch
end

# fzf
fzf --fish | source

# bat

# Aliases
alias oiv='nvim $(fzf -m --preview="bat --color=always {}")'
funcsave oiv
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
