## 1. Intro

1. Varmistetaan että kaikki ovat tehneet ennakkotehtävän
1. Intro (Atte + Matu)
1. Gitin hyödyt suunnittelijalle (Matu)
1. Avataan terminaali ja näytetään cd + finderista drägäys kikka

## 2. Terminaali & git konffaus

Asennetaan [Homebrew](http://brew.sh)

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Asennetaan työkaluja 
    
    brew install git tig bash-completion

Tab completion ignore case

    echo "set completion-ignore-case On" >> ~/.inputrc

Muoktaan bash_profilea `atom ~/.bash_profile`

    if [ -f $(brew --prefix)/etc/bash_completion ]; then
      source $(brew --prefix)/etc/bash_completion
    fi

    source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

    export PS1="\u \w \$(__git_ps1 \"(%s) \")\$ "

Muoktaan gitconfigia
    
    git config --global user.name "Oma Nimi"
    git config --global user.email "oma.nimi@reaktor.com"
    git config --global color.ui true
    git config --global core.editor "atom -w"

Restart terminal!

PS. Jos haluut kivat värit sun terminaaliin, [seuraa näitä ohjeita](terminal.md).

## 3. Harjoitus 1

1. Visualisoidaan git add-commit flow fläppitaululla + postiteilla (Atte + Matu)
1. Terminaali auki, mee jonnekkin esim. `Sites/`
1. `git clone https://github.com/reaktor/git-koulutus-suunnittelijoille.git`
1. `cd git-koulutus-suunnittelijoille`
1. Muokaa README.md tiedostoa
  1. `git status` ja `git diff`
  1. `git add README.md`(tab magic!) ja `git status`
  1. `git commit`, commit messaget ja `git log`
  1. `tig` tai `gitx`
  1. tehkää 5x add + commit, kokeillen sekä komentoriviä että gitxää

## 4. Harjoitus 2

1. Github intro (Atte + Matu)
1. Visualisoidaan git add-commit-push-pull flow fläppitaululla + postiteilla (Atte + Matu)
1. SSH key generation `ssh-keygen` ja `cat ~/.ssh/id_github.pub` -> https://github.com/settings/ssh -> New SSH key
1. Testataan yhteys `ssh -T git@github.com`
1. Kaikki luo harjoitukselle github repon, ei readme tiedostoa
1. Jakaudutaan 2-4 hlö pienryhmiin
1. Lisätään muut ryhmän jäsenet repoon, settings -> collaborators
1. Kaikki avaa mailissa olleen linkin ja kopio repon osoitteen
1. Kaikki `git clone [repon urli tähän]`
1. Luodaan omanimi.md, lisätään se repoon ja pushataan masteriin (pull before push)
1. Jokainen tyyppi muokaa *omaa* tiedostoaan (lisää, muuttaa, poistaa - ei sinänsä väliä)
  1. tehdään 5x add + commit + pull + push
1. Kaikki muuttaa samaa tiedostoa (lisää, muuttaa, poistaa - ei sinänsä väliä)
  1. add, commit, pull ja ratkotaan merge conflicteja

## 5. Harjoitus 3

1. `cd kottarit`
1. Vaihdetaan heron taustaväri ja päivitetään tuotekuva (esim. uus screenshotti jostain softasta)
1. Esikatsellaan muutokset lokaalisti selaimessa
1. Lisätään muutokset gittiin
1. Kerää liikevoitto :)

## 6. Lopetus

1. QA
1. Kerrotaan muista graafisista git työkaluista, esim. [SourceTree](https://www.sourcetreeapp.com/) ja [GitHub Desktop](https://desktop.github.com/)
1. Muuta?