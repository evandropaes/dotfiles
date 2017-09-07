#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

declare -r HOSTNAME="$1"
declare -r USERNAME="$2"
declare -r EMAIL="$3"


./xcode.sh

./homebrew.sh
./bash.sh
./../nvm.sh
./mas.sh
./devtools.sh
./visualstudiocode.sh
./dailytools.sh
./browsers.sh
./compression_tools.sh
./git.sh
./gpg.sh
./image_tools.sh
./jetbrains.sh
./misc.sh
./misc_tools.sh
./../npm.sh "$USERNAME"
./yarn.sh
./tmux.sh
./video_tools.sh
./extratools.sh
./web_font_tools.sh
./cleanup.sh
