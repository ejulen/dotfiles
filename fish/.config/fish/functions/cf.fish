function cf
    set -l dir (fd -t d | fzf)
    if test -n "$dir"
        cd "$dir"
    end
end
