#!/bin/bash

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# taps
brew tap homebrew/dupes
brew tap homebrew/versions

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(--prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

# Install wget with IRI support
brew install wget --with-iri

# Install more recent versions of some OS X tools
brew install grep
brew install screen

# Install other useful binaries
brew install fish
brew install htop
brew install imagemagick
brew install screenfetchw
brew install git
brew install curl
brew install openssl
brew install sshfs
brew install ngrep
brew install node
brew install updater

# Casks
brew install caskroom/cask/brew-cask

brew tap caskroom/versions

brew cask install 1password
brew cask install atom
brew cask install gitkraken
brew cask install google-chrome
brew cask install radiant-player
brew cask install steam
brew cask install totalspaces
brew cask install alfred
brew cask install dropbox
brew cask install iterm2-beta
brew cask install moom
brew cask install openemu
brew cask install sequel-pro
brew cask install sublime-text3
brew cask install vagrant

# Remove outdated versions from the cellar
brew cleanup
