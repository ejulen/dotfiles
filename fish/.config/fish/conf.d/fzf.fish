# fd is called fdfind on certain Linux distributions
if type -q fdfind
    alias fd fdfind
end

set -gx FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
