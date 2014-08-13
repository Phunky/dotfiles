#!/bin/bash

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

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
install homebrew/dupes/grep
install homebrew/dupes/screen
install homebrew/php/php55 --with-gmp --with-homebrew-curl --with-homebrew-openssl --with-phpdbg

# Install other useful binaries

install git
install curl
install php55
install php55-imagick
install php55-mcrypt
install php55-xdebug
install composer
install mariadb
install openssl
install sshfs

# Remove outdated versions from the cellar
cleanup
