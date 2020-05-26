#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source "../scripts/os/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    ./run_shellcheck.sh

}

main
