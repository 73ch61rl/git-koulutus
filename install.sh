#!/bin/sh

# Homebrew
echo "Asennetaan Homebrew…"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /dev/null 2>&1

# Fish
echo "Laitetaan fish sun defaultti shelliksi…"
brew install fish > /dev/null 2>&1
if [ "x$SHELL" != x/usr/local/bin/fish ]; then
    sudo sh -c "echo /usr/local/bin/fish >> /etc/shells"
    chsh -s /usr/local/bin/fish
fi

# Asenna uusin git ja tig
echo "Asennetaan uusin git ja tig…"
brew install git tig > /dev/null 2>&1

# Maisc!
echo "Asia kunnossa! 😎"