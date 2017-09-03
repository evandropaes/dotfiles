#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Ferramentas Extras\n\n"

brew_install " " "disk-inventory-x" "caskroom/cask" "cask"
brew_install " " "vlc" "caskroom/cask" "cask"
brew_install " " "gpgtools" "caskroom/cask" "cask"
brew_install " " "licecap" "caskroom/cask" "cask"
brew_install " " "utorrent" "caskroom/cask" "cask"
brew_install " " "alfred" "caskroom/cask" "cask"
brew_install " " "skype" "caskroom/cask" "cask"
brew_install " " "spotify" "caskroom/cask" "cask"
brew_install " " "lastpass" "caskroom/cask" "cask"
brew_install " " "caffeine" "caskroom/cask" "cask"
brew_install " " "dash" "caskroom/cask" "cask"
brew_install " " "evernote" "caskroom/cask" "cask"
brew_install " " "the-unarchiver" "caskroom/cask" "cask"