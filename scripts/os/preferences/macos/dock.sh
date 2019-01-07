#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Dock\n\n"

# execute "defaults write com.apple.dock autohide -bool true" \
#     "Automaticamente hide/show o Dock"

execute "defaults write com.apple.dock mouse-over-hilite-stack -boolean yes" \
    "Destacar os items do Stack quando mouse passa por cima"

execute "defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true" \
    "Ativar carregamento spring para todos os itens da Dock"

execute "defaults write com.apple.dock expose-group-by-app -bool false" \
    "Não agrupe as janelas por aplicação no Mission Control"

execute "defaults write com.apple.dock mineffect -string 'scale'" \
    "Mude o efeito minimizar/maximizar janelas"

execute "defaults write com.apple.dock minimize-to-application -bool true" \
    "Reduzir a desordem, minimizando janelas em seus ícones de aplicativos"

execute "defaults write com.apple.dock mru-spaces -bool false" \
    "Não reorganize automaticamente espaços com base no uso mais recente"

# execute "defaults write com.apple.dock persistent-apps -array && \
#          defaults write com.apple.dock persistent-others -array " \
#     "Apague todos os ícones de aplicação"

execute "defaults write com.apple.dock show-process-indicators -bool true" \
    "Mostrar luzes indicadoras para aplicações abertas"

execute "defaults write com.apple.dock showhidden -bool true" \
    "Crie ícones de aplicativos ocultos translúcidos"

execute "defaults write com.apple.dock tilesize -int 60" \
    "Definir tamanho do ícone"

killall "Dock" &> /dev/null
