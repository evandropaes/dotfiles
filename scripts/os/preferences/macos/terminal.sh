#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Terminal\n\n"

execute "defaults write com.apple.terminal FocusFollowsMouse -string true" \
    "Faça o foco automaticamente seguir o mouse"

execute "defaults write com.apple.terminal SecureKeyboardEntry -bool true" \
    "Ativar 'Secure Keyboard Entry'"

execute "defaults write com.apple.Terminal ShowLineMarks -int 0" \
    "Ocultar marcas de linha"

execute "defaults write com.apple.terminal StringEncodings -array 4" \
    "Somente use UTF-8"

execute "./set_terminal_theme.applescript" \
    "Definir tema de terminal personalizado"
