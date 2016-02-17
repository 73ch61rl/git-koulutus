#!/bin/sh

set -oe

# Asennetaan homebrew, fish shell ja git koulutusta varten

# Xcode CLI tools
xcode-select --install > /dev/null 2>&1 || echo "xcode 👍"

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || echo "homebrew 👍"

# Fish
brew install fish
chsh -s /usr/local/bin/fish

# Asenna uusin git ja tig
brew install git tig

# Maisc!
echo "Asia kunnossa! 😎"