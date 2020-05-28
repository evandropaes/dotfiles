#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Keyboard\n\n"

execute "defaults write -g AppleKeyboardUIMode -int 3" \
    "Permitir acesso completo ao teclado para todos os controles"

execute "defaults write -g ApplePressAndHoldEnabled -bool false" \
    "Disable press-and-hold in favor of key repeat"

execute "defaults write -g 'InitialKeyRepeat_Level_Saved' -int 10" \
    "Desativar pressionar e manter em favor da repetição da tecla"

execute "defaults write -g KeyRepeat -int 1" \
    "Defina a taxa de repetição da tecla para rápido"

execute "defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false" \
    "Desativar a capitalização automática"

execute "defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false" \
    "Desativar a correção automática"

execute "defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false" \
    "Desativar a substituição automática do período"

execute "defaults write -g NSAutomaticDashSubstitutionEnabled -bool false" \
    "Desabilitar smart dashes"

execute "defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false" \
    "Desativar smart quotes"
