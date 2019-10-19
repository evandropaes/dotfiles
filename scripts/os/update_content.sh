#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    ssh -T git@github.com &> /dev/null

    if [ $? -ne 1 ]; then
        ./set_github_ssh_key.sh \
            || return 1
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    print_in_purple "\n >> Atualizando conteúdo..\n\n"

    ask_for_confirmation "Você gostaria de atualizar o conteúdo do diretório 'Dotfiles'?"

    if answer_is_yes; then

        git fetch --all 1> /dev/null \
            && git reset --hard origin/master 1> /dev/null \
            && git clean -fd 1> /dev/null

        print_result $? "Atualizando o conteúdo"

    fi

}

main
