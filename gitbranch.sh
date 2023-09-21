#!/bin/bash

function gitbranch() {
    local nameone="$1"
    local option="$2"
    local nametwo="$3"

    if [ -z "$nameone" ]; then
        git branch
    else
        if [ "$option" = "d" ]; then
            git branch -d "$nameone"
        elif [ "$option" = "dr" ]; then
            git push origin --delete "$nameone"
        elif [ "$option" = "chck" ]; then
            git checkout "$nameone"
        elif [ "$option" = "m" ]; then
            git merge "$nameone"
        elif [ "$option" = "chckm" ]; then
            git checkout "$nameone" && git merge "$nametwo"
        elif [ "$option" = "chckmd" ]; then
            git checkout "$nameone" && git merge "$nametwo" && git branch -d "$nametwo"
        elif [ "$option" = "chckmdr" ]; then
            git checkout "$nameone" && git merge "$nametwo" && git branch -d "$nametwo" && git push origin --delete "$nametwo"
        fi
    fi
}

# Utilisation de la fonction avec des arguments
gitbranch "$1" "$2" "$3"
