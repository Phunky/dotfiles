# Source all configs
for file in ~/.config/fish/conf.d/*.fish
    source $file
end

# Paths
set -x PATH                      /usr/local/bin $PATH

# Add my dotfiles to my path, could symlink these but don't want  to have to rerun setup just for this.
set -x PATH                      $PATH ~/dotfiles/bin

# Larger bash history (allow 32³ entries; default is 500)
set -x HISTSIZE                  32768
set -x HISTFILESIZE              $HISTSIZE
set -x HISTCONTROL               ignoredups
