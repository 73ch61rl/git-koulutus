#!/bin/sh

set -oe

# Asennetaan homebrew, fish shell ja git koulutusta varten

# Xcode CLI tools
echo "Asennettaan Xcode CLI Tools…"
xcode-select --install > /dev/null 2>&1 || echo "Xcode 👍"

# Homebrew
echo "Asennettaan Homebrew…"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || echo "Homebrew 👍"

# Fish
echo "Laitetaan fish sun defaultti shelliksi…"
brew install fish
sudo sh -c "echo /usr/local/bin/fish >> /etc/shells"
chsh -s /usr/local/bin/fish

# Asenna uusin git ja tig
echo "Asennettaan uusin git ja tig…"
brew install git tig

# Maisc!
echo "Asia kunnossa! 😎"