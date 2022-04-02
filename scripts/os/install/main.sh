#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

declare -r HOSTNAME="$1"
declare -r USERNAME="$2"
declare -r EMAIL="$3"
declare -r DIRECTORY="$4"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n >> Instalando...\n\n"

"./$(get_os)/main.sh" "$@"
"./$(get_os)/main.sh" "$HOSTNAME" "$USERNAME" "$EMAIL"

