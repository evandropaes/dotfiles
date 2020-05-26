#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./databasetools.sh
./visualstudiocode.sh
./office.sh
./docker.sh
./dailytools.sh
./browsers.sh
./gpg.sh
./jetbrains.sh
./misc.sh
./misc_tools.sh
./../npm.sh "evandroreis"
./video_tools.sh
./extratools.sh
