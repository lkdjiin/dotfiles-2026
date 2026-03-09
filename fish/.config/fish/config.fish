if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr --add tra translate
    alias cat="batcat"
    alias mkdir="mkdir -v"
end

# Added by `rbenv init` on ven. 28 mars 2025 08:46:38 CET
status --is-interactive; and ~/.rbenv/bin/rbenv init - --no-rehash fish | source
