# Feedback

Joku visualisointi noista add commit push touhuista helpottais ei-devaajan hahmottamista. Mitä missäkin vaiheessa tapahtuu ja mitä parametrejä mukana kulkee. Visu on visuaalinen ja silleen.

Kaikki pikakomentoconfig kikat vois riisua tästä pois ja mennä ihan vanillana alusta loppuun. Pihvi on tosi hyvä ja rönsyily tekee siitä ehkä vaikeemman oloista kuin se on.

Niinku puhetta oli, joku Terminalin perusteet vois olla kans ihan hyvä kurssi

Merge konflikti on gitin käytössä se pelottavin juttu ja yleensäkin kynnys käyttää gitiä, kun pelkää, että sössii devauksen versiot. Nyt oli turvallinen ympäristö olla tyhmä ja sai tehdä luvan kanssa konflikteja ja korjata niitä.

# Visualisointi

Visualisoidaan fläppitaululla + postiteillä add -> commit rumba


# Ajatuksia

Skipataan installer skripti ja mennään niin vanillana kun voidaan.

Asennetaan [Homebrew](http://brew.sh) ja paketit `git, tig, bash-completion`

Kaikki asentaa [Atomin](https://atom.io/)

Muutama terminaali conffi

    echo "set completion-ignore-case On" >> ~/.inputrc

.bash_profile

    if [ -f $(brew --prefix)/etc/bash_completion ]; then
      source $(brew --prefix)/etc/bash_completion
    fi

    source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

    PS1="\h:\W \u\$(__git_ps1 \" (%s) \")\$ "


.gitconfig

    git config --global user.name "John Doe"
    git config --global user.email johndoe@reaktor.com
    git config --global color.ui true
    git config --global core.editor "atom -w"
 
# Uus rakenne

1. Mikäs tää git on ja miks sen on hyvä osata
1. Tutustutaan terminaaliin
1. Terminaali ja git konffit
1. Harjoitus 1
1. Harjoitus 2
1. Harjoitus 3
