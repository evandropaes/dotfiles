#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Browsers\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Google Chrome" "google-chrome" "caskroom/cask" "cask"
brew_install "Google Chrome Canary" "google-chrome-canary" "caskroom/versions" "cask"
brew_install "Chromium" "chromium" "caskroom/cask" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Firefox" "firefox" "caskroom/cask" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Flash" "flash-npapi" "caskroom/cask" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Opera" "opera" "caskroom/cask" "cask"
brew_install "Opera Beta" "opera-beta" "caskroom/versions" "cask"
brew_install "Opera Developer" "opera-developer" "caskroom/versions" "cask"

if is_supported_version "$(get_os_version)" "10.11.4"; then
    printf "\n"
    brew_install "Safari Technology Preview" "safari-technology-preview" "caskroom/versions" "cask"
fi

