#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Photos\n\n"

execute "defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true" \
    "Impedir que as fotos sejam abertas automaticamente quando os dispositivos estão conectados"

killall "Photos" &> /dev/null
