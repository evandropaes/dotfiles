#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscelânea\n\n"

brew_install "Android File Transfer" "android-file-transfer" "caskroom/cask" "cask"
<<<<<<< HEAD
brew_install "Spectacle" "spectacle" "caskroom/cask" "cask"
=======
>>>>>>> c2e89c931e3ce30ca60242d71a8160495a66fe67
brew_install "The Unarchiver" "the-unarchiver" "caskroom/cask" "cask"
brew_install "Transmission" "transmission" "caskroom/cask" "cask"

