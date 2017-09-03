#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Safari\n\n"

execute "defaults write com.apple.Safari AutoOpenSafeDownloads -bool false" \
    "Desative abrir arquivos 'seguros' automaticamente"

execute "defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true" \
    "Defina a tecla de retrocesso para ir para a página anterior no histórico"

execute "defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
         defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
         defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true" \
    "Ative o menu 'Developer' e o 'Web Inspector'"

execute "defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false" \
    "Defina o tipo de pesquisa como 'Contém' em vez de 'Iniciando com'"

execute "defaults write com.apple.Safari HomePage -string 'about:blank'" \
    "Configure a página inicial para 'about: blank'"

execute "defaults write com.apple.Safari IncludeInternalDebugMenu -bool true" \
    "Habilitar o menu 'Debug'"

execute "defaults write com.apple.Safari ShowFavoritesBar -bool false" \
    "Ocultar barra de marcadores por padrão"

execute "defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true" \
    "Mostra o URL completo na barra de endereços"

execute "defaults write com.apple.Safari SuppressSearchSuggestions -bool true && \
         defaults write com.apple.Safari UniversalSearchEnabled -bool false" \
    "Não envie consultas de pesquisa para a Apple"

execute "defaults write -g WebKitDeveloperExtras -bool true" \
    "Adicione um item de menu de contexto para mostrar o 'Web Inspector' nas visualizações da web"

killall "Safari" &> /dev/null
