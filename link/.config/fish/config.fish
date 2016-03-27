
set fisher_home ~/.local/share/fisherman
set fish_config ~/.config/fish
set fisher_config ~/.config/fisherman

source $fisher_home/config.fish

# Paths
set -x PATH                      /usr/local/bin $PATH

# Add my dotfiles to my path, could symlink these but don't want  to have to rerun setup just for this.
set -x PATH                      $PATH ~/dotfiles/bin

# Larger bash history (allow 32³ entries; default is 500)
set -x HISTSIZE                  32768
set -x HISTFILESIZE              $HISTSIZE
set -x HISTCONTROL               ignoredups

# Homebrew OAUTH token
set -x HOMEBREW_GITHUB_API_TOKEN c3d1b6e5cd86b4b294591496c65104ca385f9396


