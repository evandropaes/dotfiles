#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source "../scripts/os/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    # ' At first you're like "shellcheck is awesome" but then you're
    #   like "wtf are we still using bash" '.
    #
    #  (from: https://twitter.com/astarasikov/status/568825996532707330)

    find \
        ../travis \
        ../scripts/os \
        ../scripts/shell \
        -type f \
        ! -path '../scripts/shell/curlrc' \
        ! -path '../scripts/shell/inputrc' \
        ! -path '../scripts/os/preferences/macos/*.applescript' \
        ! -path '../scripts/os/preferences/macos/*.terminal' \
        -exec shellcheck \
                -e SC1090 \
                -e SC1091 \
                -e SC2155 \
                -e SC2164 \
        {} +

    print_result $? "Executa código através do ShellCheck"

}

main
