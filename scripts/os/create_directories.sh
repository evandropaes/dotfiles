#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_directories() {

    declare -a DIRECTORIES=(
        "$HOME/Downloads/Dotfiles"
    )

    for i in "${DIRECTORIES[@]}"; do
        mkd "$i"
    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n >> Criando diretórios...\n\n"
    create_directories
}

main
