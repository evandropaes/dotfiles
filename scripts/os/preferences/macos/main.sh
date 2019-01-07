#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"


declare -r HOSTNAME="$1"
declare -r USERNAME="$2"
declare -r EMAIL="$3"

print_in_yellow "\n\n"
print_in_yellow "   ------------------------------------------------------\n"
print_in_yellow "   Configurando as preferências no sistema e nas apps\n"
print_in_yellow "   ------------------------------------------------------\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Close any open `System Preferences` panes in order to
# avoid overriding the preferences that are being changed.

./close_system_preferences_panes.applescript

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./app_store.sh
./chrome.sh
./dashboard.sh
./dock.sh
./finder.sh
./firefox.sh
./keyboard.sh
./language_and_region.sh
./maps.sh
./photos.sh
./safari.sh
./spectacle.sh
./terminal.sh
./textedit.sh
./trackpad.sh
./transmission.sh
# ./twitter.sh
./ui_and_ux.sh "$HOSTNAME"
