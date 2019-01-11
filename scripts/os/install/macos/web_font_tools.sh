#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Web Font Tools\n\n"

brew_install "Web Font Tools: TTF/OTF → WOFF (Zopfli)" "sfnt2woff-zopfli" "bramstein/webfonttools"
brew_install "Web Font Tools: TTF/OTF → WOFF" "sfnt2woff" "bramstein/webfonttools"
brew_install "Web Font Tools: WOFF2" "woff2" "bramstein/webfonttools"


print_in_purple "\n   Instalando fonts\n\n"

print_in_yellow "\n   Instalando .TTF fonts\n"
cp -R ./fonts/*.ttf /Library/Fonts

print_in_yellow "\n   Instalando .OTF fonts\n"
cp -R ./fonts/*.otf /Library/Fonts

print_in_yellow "\n   Instalando .WOFF fonts\n"
cp -R ./fonts/*.woff /Library/Fonts
