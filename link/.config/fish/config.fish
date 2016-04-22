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

# Github OAuth Token for Homebrew
set -x HOMEBREW_GITHUB_API_TOKEN da779371bfd9b0ebea33d2c1e5355503b6885193
