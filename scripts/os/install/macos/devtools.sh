#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Ferramentas de Desenvolvimento\n\n"


brew_install "iTerm2" "iterm2" "caskroom/cask" "cask"
brew_install "Sublime Text" "sublime-text" "caskroom/cask" "cask"
brew_install "ImageAlpha" "imagealpha" "caskroom/cask" "cask"
brew_install "Image Optimization" "imageoptim" "caskroom/cask" "cask"
brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"
brew_install "Source Tree" "sourcetree" "caskroom/cask" "cask"
brew_install ".NET" "dotnet" "caskroom/cask" "cask"
brew_install "Docker Toolbox" "docker-toolbox" "caskroom/cask" "cask"
brew_install "Parallels Desktop" "parallels-desktop" "caskroom/cask" "cask"