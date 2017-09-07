#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_yarn() {

    if ! cmd_exists "yarn"; then
         execute "npm install --global --silent yarn" "Yarn"
    fi


    print_result $? "Yarn"
}


yarn_upgrade() {


    execute \
        "yarn upgrade" \
        "Yarn (upgrade)"
}

install_yarn_packages() {

    yarn_install_package "commitizen" "Commitizen"
    yarn_install_package "create-react-app" "React App"
    yarn_install_package "create-react-native-app" "React Native App"
    yarn_install_package "exp" "Exp"
    yarn_install_package "flow-bin" "Flow Bin"
    yarn_install_package "lerna" "Lerna"
}

install_yarn_package() {

    declare -r CMD="global"
    declare -r PACKAGE_NAME="global add"
    declare -r YARN_PACKAGE="$1"


    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Check if `Yarn` is installed.

    if ! cmd_exists "yarn"; then
        print_error "$YARN_PACKAGE ('Yarn' não está instalado)."
        return 1
    fi

    execute "yarn $CMD add $YARN_PACKAGE $PACKAGE_NAME"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   Yarn\n\n"

    install_yarn
    yarn_upgrade
    install_yarn_packages

}

main
