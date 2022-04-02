#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Ferramentas de Diárias\n\n"

brew_install "AppCleaner" "appcleaner" "caskroom/cask" "cask"
brew_install "DropBox" "dropbox" "caskroom/cask" "cask"
brew_install "Powershell" "powershell" "caskroom/cask" "cask"
brew_install "SmartConverter" "smartconverter" "caskroom/cask" "cask"
brew_install "Spectacle" "spectacle" "caskroom/cask" "cask"
#brew_install "Teamviewer" "teamviewer" "caskroom/cask" "cask"
brew_install "VeraCrypt" "veracrypt" "caskroom/cask" "cask"
