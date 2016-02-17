#!/bin/sh

# Asennetaan homebrew, fish shell ja git koulutusta varten

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Xcode CLI tools
xcode-select --install

# Fish
brew install fish
chsh -s /usr/local/bin/fish

# Asenna uusin git ja tig
brew install git tig

# Maisc!
echo "Asia kunnossa! 😎"