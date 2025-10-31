function oiv --wraps='nvim $(fzf -m --preview="bat --color=always {}")' --description 'alias oiv=nvim $(fzf -m --preview="bat --color=always {}")'
    nvim $(fzf -m --preview="bat --color=always {}") $argv
end
