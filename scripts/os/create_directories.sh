#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_directories() {

    declare -a DIRECTORIES=(
<<<<<<< HEAD
        "$HOME/Personalize"
=======
        "$HOME/Downloads/dotfiles"
>>>>>>> c2e89c931e3ce30ca60242d71a8160495a66fe67
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
