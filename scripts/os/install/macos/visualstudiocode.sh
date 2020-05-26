#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

<<<<<<< HEAD
print_in_purple "\n   Visual Studio Code e Extensões\n\n"


brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"
brew_install "Visual Studio for Mac" "visual-studio" "caskroom/cask" "cask"
brew_install "Xamarin for Mac" "xamarin-mac" "caskroom/cask" "cask"
brew_install "Xamarin Profiler" "xamarin-profiler" "caskroom/cask" "cask"
brew_install "Xamarin Studio" "xamarin-studio" "caskroom/cask" "cask"
brew_install "Xamarin" "xamarin" "caskroom/cask" "cask"
=======
print_in_purple "\n   Visual Studio for Mac \n\n"


#brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"
brew_install "Visual Studio for Mac" "visual-studio" "caskroom/cask" "cask"
>>>>>>> c2e89c931e3ce30ca60242d71a8160495a66fe67

