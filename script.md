# Käsis

>Jos disainerit osais käyttää gittiä ja komentoriviä ne veis meidän naiset ja työt  
>Ainoa este siihen on niiden osaamattomuus gitissä ja komentorivin käytössä  
>– Vessi

## 0. Tehtävä ennen koulutusta

1. [Luo github-tunnarit](https://github.com/join), jos ei sulla jo ole
1. Lisää oikea nimesi ja kuvasi github-profiiliin
1. Kerro github usernamesi släkissä [#admin](https://reaktor.slack.com/messages/admin/) kanavalla ja pyydä lisäämään reaktorians-ryhmään
1. Liity släkissä kanavalle [#git-koulutus](https://reaktor.slack.com/messages/git-koulutus/)
1. Asenna [Atom](https://atom.io/) ja [GitX](http://rowanj.github.io/gitx/)
1. Jos haluat, tee GitHubin [Try Git](https://try.github.io)-harjoitus

## 1. Intro

1. Intro Atte + Matu
1. Gitin hyödyt suunnittelijalle Matu

## 2. Terminaali-intro

1. Tutustuaan navigointiin finderin ja terminaalin avulla temppihakemistossa
1. Siirrytään hakemistoista toiseen, luodaan tiedosto ja avataan tiedostoja `atom/open tiedosto.txt`
1. Poistetaan temppihakemisto

# 3. Terminaali & git konffaus

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

### 3.1 Advanced edelliseen, haluun kivat värit! 

[Lataa matun theme tästä](https://www.dropbox.com/s/2g5yzgc6d5r0mge/Cuicca.terminal?dl=1)

Importtaa theme

![ohje](http://i.stack.imgur.com/KeH56.png)

Valitse listassa _Cuicca_ theme, paina **Default** nappia

Muoktaan bash_profilea `atom ~/.bash_profile`

    export CLICOLOR=1
    export LSCOLORS=ExFxCxDxBxegedabagacad

    if [ -f $(brew --prefix)/etc/bash_completion ]; then
      source $(brew --prefix)/etc/bash_completion
    fi

    source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

    # Tumma terminaali theme
    export PS1="\[\e[33m\]\u\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]\$(__git_ps1 \"(%s) \")\[\e[m\]\$ "

    # Vaalea terminaali theme
    # export PS1="\[\e[31m\]\u\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]\$(__git_ps1 \"(%s) \")\[\e[m\]\$ "

## 4. Harjoitus

1. Atte + Matu visualisoi git add-commit flown fläppitaululla + postiteilla 
1. Terminaali auki, mee jonnekkin esim. `Sites/`
1. `git clone https://github.com/reaktor/git-koulutus-suunnittelijoille.git`
1. `cd git-koulutus-suunnittelijoille`
1. Muokaa README.md tiedostoa
  1. `git status` ja `git diff`
  1. `git add README.md`(tab magic!) ja `git status`
  1. `git commit`, commit messaget ja `git log`
  1. `tig`!
  1. tehkää 4x add + commit

## 5. Harjoitus

1. Github intro Atte + Matu
1. Atte + Matu visualisoi git add-commit-push-pull flown fläppitaululla + postiteilla
1. SSH key generation `ssh-keygen` ja `cat ~/.ssh/id_github.pub` -> https://github.com/settings/ssh -> New SSH key
1. Testataan yhteys `ssh -T git@github.com`
1. Kaikki luo harjoitukselle github repon, ei readme tiedostoa
1. Jakaudutaan 2-4 hlö pienryhmiin
1. Lisätään muut ryhmän jäsenet repoon, settings -> collaborators
1. Kaikki avaa mailissa olleen linkin ja kopio repon osoitteen
1. Kaikki `git clone [repon urli tähän]`
1. Lisätään omanimi.md tideosto repoon -> `git add omanimi.md` ja `git commit -m "Add omanimi.md"`
1. Kaikki `git pull`
1. Jokainen tyyppi muokaa omaa tiedostoaan (lisää, muuttaa, poistaa - ei sinänsä väliä)
  1. `git add omanimi.md` ja `git commit -m "Viesti"`
  1. `git pull`
  1. `git push master`
  1. tehkää 4x add + commit + pull + push
1. Kaikki muuttaa samaa tiedostoa (lisää, muuttaa, poistaa - ei sinänsä väliä)
  1. `git add tiedosto.md` ja `git commit -m "Viesti"`
  1. `git pull`
  1. ratkotaan merge conflicteja

## 6. Harjoitus

1. `cd kottarit`
1. Vaihdetaan heron taustaväri
1. Päivitetään tuotekuva, esim. uus screenshotti jostain softasta
1. Esikatsellaan muutokset lokaalisti selaimessa
1. `git add` + `git commit`
1. Kerää liikevoitto :)

## 7. Lopetus

1. QA
1. Kerrotaan graafisista git työkaluista, esim. [SourceTree](https://www.sourcetreeapp.com/) ja [GitHub Desktop](https://desktop.github.com/)
1. Muuta?