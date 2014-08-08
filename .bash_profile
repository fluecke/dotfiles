#!/bin/bash

# source config files
for f in ~/.{exports,aliases,functions,dircolors}; do
    [[ -r "$f" ]] && [[ -f "$f" ]] && source "$f"
done

if [[ -f ~/.git-completion.bash ]]; then
    source ~/.git-completion.bash
fi

if [[ -f ~/.git-prompt.sh ]]; then
    source ~/.git-prompt.sh
fi

defineColorNames

if [[ $TERM != "dumb" ]]; then
    if [[ $SHELL == "/bin/bash" || $SHELL == "/bin/sh" ]]; then
        export HISTTIMEFORMAT="[$(tput setaf 6)%F %T$(tput sgr0)]: "
        # define the prompt string
        PS1='\[$blue\]$(shortPath)\[$reset\] $(__git_ps1 "[%s]")'
        PS1+='\[$orange\]λ\[$reset\] '
        export PS1

        PS2='\[$orange\]→ \[$reset\]'
        export PS2
    fi
else
    export PS1='$(getPWD) $(getGitBranch)$(getGitStatus)λ '
fi

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

