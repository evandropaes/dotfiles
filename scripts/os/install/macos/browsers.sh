#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Browsers\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Google Chrome" "google-chrome" "caskroom/cask" "cask"
brew_install "Edge" "microsoft-edge" "caskroom/cask" "cask"
brew_install "Firefox" "firefox" "caskroom/cask" "cask"
brew_install "Flash" "flash-npapi" "caskroom/cask" "cask"
brew_install "Opera" "opera" "caskroom/cask" "cask"
brew_install "Brave" "brave-browser" "caskroom/cask" "cask"
