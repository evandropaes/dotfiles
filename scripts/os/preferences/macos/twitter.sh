#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Twitter\n\n"

###############################################################################
# Twitter.app                                                                 #
###############################################################################

execute "defaults write com.twitter.twitter-mac AutomaticQuoteSubstitutionEnabled -bool false" \
    "Disable smart quotes as it’s annoying for code tweets"

execute "defaults write com.twitter.twitter-mac MenuItemBehavior -int 1" \
    "Show the app window when clicking the menu bar icon"
  
execute "defaults write com.twitter.twitter-mac ShowDevelopMenu -bool true" \
    "Enable the hidden ‘Develop’ menu"
 
execute "defaults write com.twitter.twitter-mac openLinksInBackground -bool true" \
    "Open links in the background"
 
execute "defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true" \
    "Allow closing the ‘new tweet’ window by pressing 'Esc'"
 
execute "defaults write com.twitter.twitter-mac ShowFullNames -bool true" \
    "Show full names rather than Twitter handles"
 
execute "defaults write com.twitter.twitter-mac HideInBackground -bool true" \
    "Hide the app in the background if it’s not the front-most window"
