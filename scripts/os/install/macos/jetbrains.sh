#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Ferramentas da JetBrains\n\n"

brew_install "AppCode" "appcode" "caskroom/cask" "cask"
brew_install "CLion" "clion" "caskroom/cask" "cask"
brew_install "IntelliJ IDEA" "intellij-idea" "caskroom/cask" "cask"
brew_install "MPS" "mps" "caskroom/cask" "cask"
brew_install "PhpStorm" "phpstorm" "caskroom/cask" "cask"
brew_install "PyCharm" "pycharm" "caskroom/cask" "cask"
brew_install "RubyMine" "rubymine" "caskroom/cask" "cask"
brew_install "WebStorm" "webstorm" "caskroom/cask" "cask"