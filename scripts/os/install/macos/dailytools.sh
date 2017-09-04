#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Ferramentas de Diárias\n\n"

brew_install "Spectacle" "spectacle" "caskroom/cask" "cask"
brew_install "Dropbox" "dropbox" "caskroom/cask" "cask"
brew_install "Gyazo" "gyazo" "caskroom/cask" "cask"
brew_install "Slack" "slack" "caskroom/cask" "cask"