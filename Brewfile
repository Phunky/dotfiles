#!/bin/bash

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
brew install gnu-sed --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install grep
brew install screen

# Install other useful binaries
brew install git
brew install curl
brew install mariadb
brew install openssl
brew install sshfs

# Setup apache
brew tap homebrew/apache
brew install httpd24

# Setup PHP
brew tap homebrew/homebrew-php
brew install php56 --homebrew-apxs --with-debug --with-homebrew-openssl --with-homebrew-curl
brew install php56-imagick
brew install php56-mcrypt
brew install php56-xdebug
brew install composer

# Casks
brew install caskroom/cask/brew-cask
brew cask install google-chrome
brew cask install google-chrome-canary
#brew  cask install firefox-aurora
brew cask install alfred
brew cask install dropbox
brew cask install iterm2
brew cask install onepassword
brew cask install sequel-pro
brew cask install spectacle
brew cask install sublime-text3

# Remove outdated versions from the cellar
brew cleanup
