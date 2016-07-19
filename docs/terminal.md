### Haluun kivat värit terminaaliin! 

[Lataa matun theme tästä](https://www.dropbox.com/s/70zbtjuwl080j1z/Cuicca%202.terminal?dl=1)

Importtaa ja aktivoi theme

![ohje](img/1.png)

![ohje](img/2.png)

![ohje](img/3.png)

Muokkaa bash_profilea `atom ~/.bash_profile`

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
