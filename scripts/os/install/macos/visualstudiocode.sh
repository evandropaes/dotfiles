#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio for Mac \n\n"


#brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"
brew_install "Visual Studio for Mac" "visual-studio" "caskroom/cask" "cask"

