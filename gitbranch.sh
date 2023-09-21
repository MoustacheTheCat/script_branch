#!/bin/bash

function gitbranch() {
    local option="$1"
    local nameone="$2"
    local nametwo="$3"
    
    if [ -z "$option" ]; then
        if [ -z "$nameone" ]; then
            git branch
        else
            git branch "$nameone"
        fi
    else
        if [[ "$option" == "cc" ]]; then
            git branch "$nameone" && git checkout "$nameone"
        elif [[ "$option" == "d" ]]; then
            git branch -d "$nameone"
        elif [[ "$option" == "dr" ]]; then
            git push origin --delete "$nameone"
        elif [[ "$option" == "chck" ]]; then
            git checkout "$nameone"
        elif [[ "$option" == "m" ]]; then
            git merge "$nameone"
        elif [[ "$option" == "chckm" ]]; then
            git checkout "$nameone" && git merge "$nametwo"
        elif [[ "$option" == "chckmd" ]]; then
            git checkout "$nameone" && git merge "$nametwo" && git branch -d "$nametwo"
        elif [[ "$option" == "chckmdr" ]]; then
            git checkout "$nameone" && git merge "$nametwo" && git branch -d "$nametwo" && git push origin --delete "$nametwo"
        fi
    fi
}

# Utilisation de la fonction avec des arguments
gitbranch "$1" "$2" "$3"
