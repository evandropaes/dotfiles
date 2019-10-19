#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

initialize_git_repository() {

    declare -r GIT_ORIGIN="$1"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if [ -z "$GIT_ORIGIN" ]; then
        print_error "Forneça um URL para o origin do Git"
        exit 1
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if ! is_git_repository; then

        # Run the following Git commands in the root of
        # the dotfiles directory, not in the `os/` directory.

        cd ../../ \
            || print_error "Falha no 'cd ../../'"

        execute \
            "git init && git remote add origin $GIT_ORIGIN" \
            "Inicializando o repositório do Git"

        execute "git config --global user.name '$USERNAME'" \
            "Adicionando o usuário '$USERNAME'" 

        execute "git config --global user.email '$EMAIL'" \
            "Adicionando o e-mail '$EMAIL'" 

    fi

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n >> Inicializando o repositório do Git\n\n"
    initialize_git_repository "$1"
}

main "$1"
