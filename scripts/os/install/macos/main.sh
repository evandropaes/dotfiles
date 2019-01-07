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
./office.sh
./docker.sh
./dailytools.sh
./browsers.sh
./gpg.sh
./jetbrains.sh
./misc.sh
./misc_tools.sh
./../npm.sh "$USERNAME"
./video_tools.sh
./extratools.sh
./web_font_tools.sh
./cleanup.sh
