# Käsis
Jos disainerit osais käyttää gittiä ja komentoriviä ne veis meidän naiset ja työt
Ainoa este siihen on niiden osaamattomuus gitissä ja komentorivin käytössä

## 0. Tehtävä ennen koulutusta
1. [Luo github-tunnarit](https://github.com/join)
1. Lisää oikea nimesi github-profiiliin
1. Kuva olisi kiva
1. Kerro github usernamesi släkissä #admin-kanavalle ja pyydä lisäämään reaktorians-ryhmään
1. Asenna tarvittavat ohjelmat:
  `curl https://raw.githubusercontent.com/reaktor/git-koulutus-suunnittelijoille/master/install.sh | sh`

## 1. Intro
1. intro atte + matu

## 2. Harjoitus
1. terminaali auki, mee jonnekkin esim. `sites/`
1. `git clone https://github.com/reaktor/git-koulutus-suunnittelijoille.git`
1. `cd git-koulutus-suunnittelijoille`
1. `sh install.sh`
1. restart terminal
1. muokaa README.md tiedostoa
  1. `git status` ja `git diff`
  1. `git add README.md` ja `git status`
  1. `git commit`, commit messaget ja `git log`
  1. `tig`!
  1. tehkää 4x add + commit

## 3. Harjoitus
1. github intro atte + matu
1. ssh key generation https://help.github.com/articles/generating-a-new-ssh-key/ || github desktop tekee tän kun käynnistää softan ja kirjautuu sisään, parempi?
1. jakaudutaan 2-4 hlö pienryhmiin
1. mihin repoon jengi puskee? tekeekö ne oman repon ryhmää varten vai oman branchin?
1. yks tyyppi `git push master`
1. muut ottaa `git pull`
1. jokainen tyyppi muokaa vain yhtä osioo tekstistä (lisää, muuttaa, poistaa - ei sinänsä väliä)
  1. `git add README.md` ja `git commit`
  1. `git pull --rebase`
  1. `git push master`
  1. toistetaan pari kertaa
1. kaikki muuttaa samaa kohtaa tekstissä (lisää, muuttaa, poistaa - ei sinänsä väliä)
  1. `git add README.md` ja `git commit`
  1. `git pull --rebase`
  1. ratkotaan merge conflicteja

## 4. Harjoitus
1. `cd kottarit`
1. vaihdetaan heron taustaväri
1. päivitetään tuotekuva, esim. uus screenshotti jostain softasta
1. esikatsellaan muutokset lokaalisti selaimessa
1. `git add -u`
1. `git commit`
1. Kerää liikevoitto :)