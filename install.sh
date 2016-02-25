#!/bin/sh

# Homebrew
echo "Asennetaan Homebrew…"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > install.log 2>&1
if [ $? -ne 0 ]; then
    echo "Nyt täytyy hyväksyä XCoden lisenssi"
    sudo xcodebuild -license accept
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" >> install.log 2>&1
fi

if [ ! -x /usr/local/bin/brew ]; then
    echo "Brewin asentaminen epäonnistui, pyydä apua släkissä #git-koulutus"
    exit 1
fi

# Fish
echo "Laitetaan fish sun defaultti shelliksi…"
brew install fish >> install.log 2>&1
if [ "x$SHELL" != x/usr/local/bin/fish ]; then
    if [ -x /usr/local/bin/fish ]; then
        sudo sh -c "echo /usr/local/bin/fish >> /etc/shells"
        chsh -s /usr/local/bin/fish
    else
        echo "fishin asentaminen epäonnistui, pyydä apua släkissä #git-koulutus"
        exit 1
    fi
fi

# Asenna uusin git ja tig
echo "Asennetaan uusin git ja tig…"
brew install git tig >> install.log 2>&1
if [ $? -ne 0 ]; then
    echo "gitin asentaminen epäonnistui, pyydä apua släkissä #git-koulutus"
    exit 1
fi

# Maisc!
echo "Asia kunnossa! 😎"
