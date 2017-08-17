#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   App Store\n\n"

execute "defaults write com.apple.appstore ShowDebugMenu -bool true" \
    "Habilita menu de debug"

execute "defaults write com.apple.commerce AutoUpdate -bool true" \
    "Habilita auto-update"

execute "defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true" \
    "Ativa verificação de atualização automática"

execute "defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1" \
    "Baixa atualizações recentemente disponíveis em background"

execute "defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1" \
    "Instala arquivos de dados do System e atualizações de segurança"

killall "App Store" &> /dev/null
