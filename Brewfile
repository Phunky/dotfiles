#!/bin/bash

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# taps
tap homebrew/dupes
tap homebrew/versions

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(--prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install some other useful utilities like `sponge`
install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
install findutils
# Install GNU `sed`, overwriting the built-in `sed`
install gnu-sed --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
install bash
install bash-completion

# Install wget with IRI support
install wget --enable-iri

# Install more recent versions of some OS X tools
install grep
install screen

# Install other useful binaries
install git
install curl
install mariadb
install openssl
install sshfs
install

# Setup apache
tap homebrew/apache
install httpd24

# Setup PHP
tap homebrew/homebrew-php
install php55 --homebrew-apxs --with-debug --with-homebrew-openssl --with-homebrew-curl
install php55-imagick
install php55-mcrypt
install php55-xdebug
install composer

# Casks
install caskroom/cask/brew-cask
cask install chrome
cask install google-chrome
cask install google-chrome-canary
cask install firefox-aurora
cask install alfred
cask install dropbox
cask install iterm2
cask install launchrocket
cask install onepassword
cask install sequel-pro
cask install spectacle
cask install sublime-text3

# Remove outdated versions from the cellar
cleanup
