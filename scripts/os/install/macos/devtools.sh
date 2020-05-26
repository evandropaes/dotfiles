#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Ferramentas de Desenvolvimento\n\n"


brew_install "Android Studio" "android-studio" "caskroom/cask" "cask"
brew_install "Image Optimization" "imageoptim" "caskroom/cask" "cask"
brew_install "ImageAlpha" "imagealpha" "caskroom/cask" "cask"
brew_install "iTerm2" "iterm2" "caskroom/cask" "cask"
brew_install "Microsoft .NET Code SDK" "dotnet-sdk" "caskroom/cask" "cask"
brew_install "Postman" "postman" "caskroom/cask" "cask"
brew_install "R Studio" "rstudio" "caskroom/cask" "cask"
brew_install "Source Tree" "sourcetree" "caskroom/cask" "cask"
brew_install "Unity" "unity" "caskroom/cask" "cask"
brew_install "Xamarin for Mac" "xamarin-mac" "caskroom/cask" "cask"
brew_install "Xamarin profiler" "xamarin-profiler" "caskroom/cask" "cask"
brew_install "Xamarin Studio" "xamarin-studio" "caskroom/cask" "cask"
<<<<<<< HEAD

=======
brew_install "Xamarin" "xamarin" "caskroom/cask" "cask"
>>>>>>> c2e89c931e3ce30ca60242d71a8160495a66fe67


