#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Transmission\n\n"

execute "defaults write org.m0k.transmission DeleteOriginalTorrent -bool true" \
    "Exclua os arquivos originais do torrent"

execute "defaults write org.m0k.transmission DownloadAsk -bool false" \
    "Não solicite confirmação antes de fazer o download"

execute "defaults write org.m0k.transmission MagnetOpenAsk -bool false" \
    "Não solicite confirmação antes do download para links magnets"

execute "defaults write org.m0k.transmission CheckRemoveDownloading -bool true" \
    "Não solicite confirmação antes de remover as transferências ativas não baixadas"

execute "defaults write org.m0k.transmission DownloadChoice -string 'Constant' && \
         defaults write org.m0k.transmission DownloadFolder -string '$HOME/Downloads'" \
    "Use '~/Downloads' para armazenar downloads completos"

execute "defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true && \
         defaults write org.m0k.transmission IncompleteDownloadFolder -string '$HOME/Downloads/Torrents'" \
    "Use '~/Downloads/Torrents' para armazenar downloads incompletos"

execute "defaults write org.m0k.transmission WarningDonate -bool false" \
    "Ocultar a mensagem de doação"

execute "defaults write org.m0k.transmission WarningLegal -bool false" \
    "Ocultar o aviso legal"

execute "defaults write org.m0k.transmission RandomPort -bool true" \
    "Randomize a porta no lançamento"

killall "Transmission" &> /dev/null
