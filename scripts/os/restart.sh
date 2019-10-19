#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n >> Restartando...\n\n"

    ask_for_confirmation "Você quer mesmo reinicializar?"
    printf "\n"

    if answer_is_yes; then
        sudo shutdown -r now &> /dev/null
    fi

 }

 main
