# Käsis
Jos disainerit osais käyttää gittiä ja komentoriviä ne veis meidän naiset ja työt
Ainoa este siihen on niiden osaamattomuus gitissä ja komentorivin käytössä

## 0. Intro
1. intro atte + matu

## 1. Harjoitus
1. terminaali auki, mee jonnekkin esim. `sites/`
1. `git clone https://github.com/reaktor/git-koulutus-suunnittelijoille.git`
1. `cd git-koulutus-suunnittelijoille`
1. `chmod +x install.sh` ja `./install.sh`
1. restart terminal
1. muokaa README.md tiedostoa
  1. `git status` ja `git diff`
  1. `git add README.md` ja `git status`
  1. `git commit`, commit messaget ja `git log`
  1. `tig`!
  1. tehkää 4x add + commit

## 2. Harjoitus
1. github intro atte + matu
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

## 3. Harjoitus
1. `cd kottarit`
1. vaihdetaan heron taustaväri 
1. päivitetään tuotekuva
1. esikatsellaan muutokset lokaalisti selaimessa
1. `git add .`
1. `git commit`
1. Kerää liikevoitto :)