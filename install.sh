#!/bin/sh

# Asennetaan homebrew, fish shell ja git koulutusta varten

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Fish
brew install fish
chsh -s /usr/local/bin/fish

# Päivitetään git uusimpaan
brew install git