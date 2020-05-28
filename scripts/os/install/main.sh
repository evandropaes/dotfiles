#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

declare -r HOSTNAME="$1"
declare -r USERNAME="$2"
declare -r EMAIL="$3"
<<<<<<< HEAD
declare -r DIRECTORY="$4"
=======
>>>>>>> c2e89c931e3ce30ca60242d71a8160495a66fe67

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n >> Instalando...\n\n"

<<<<<<< HEAD
"./$(get_os)/main.sh" "$@"
=======
"./$(get_os)/main.sh" "$HOSTNAME" "$USERNAME" "$EMAIL"
>>>>>>> c2e89c931e3ce30ca60242d71a8160495a66fe67
