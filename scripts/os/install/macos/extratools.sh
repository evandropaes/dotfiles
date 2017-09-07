#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Ferramentas Extras\n\n"

brew_install "Disk Inventory" "disk-inventory-x" "caskroom/cask" "cask"
brew_install "VLC" "vlc" "caskroom/cask" "cask"
brew_install "GPG Tools" "gpgtools" "caskroom/cask" "cask"
brew_install "Licecap" "licecap" "caskroom/cask" "cask"
brew_install "Alfred" "alfred" "caskroom/cask" "cask"
brew_install "Skype" "skype" "caskroom/cask" "cask"
brew_install "Spotify" "spotify" "caskroom/cask" "cask"
brew_install "LastPass" "lastpass" "caskroom/cask" "cask"
brew_install "Caffeine" "caffeine" "caskroom/cask" "cask"
brew_install "Dash" "dash" "caskroom/cask" "cask"
brew_install "Evernote" "evernote" "caskroom/cask" "cask"
