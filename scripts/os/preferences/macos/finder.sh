#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Finder\n\n"

execute "defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true && \
         defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true && \
         defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true" \
    "Abra automaticamente uma nova janela do Finder quando um volume é montado"

execute "defaults write com.apple.finder _FXShowPosixPathInTitle -bool true" \
    "Use o caminho POSIX completo como título da janela"

execute "defaults write com.apple.finder DisableAllAnimations -bool true" \
    "Desativar todas as animações"

execute "defaults write com.apple.finder WarnOnEmptyTrash -bool false" \
    "Desative o aviso antes de esvaziar o Lixo"

execute "defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf'" \
    "Procurar no diretório atual por padrão"

execute "defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false" \
    "Desativar aviso ao alterar uma extensão de arquivo"

execute "defaults write com.apple.finder FXPreferredViewStyle -string 'Nlsv'" \
    "Use a vista de lista em todas as janelas do Finder por padrão"

execute "defaults write com.apple.finder NewWindowTarget -string 'PfDe' && \
         defaults write com.apple.finder NewWindowTargetPath -string 'file://$HOME/Desktop/'" \
    "Defina 'Desktop' como o local padrão para novas janelas do Finder"

execute "defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true && \
         defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true && \
         defaults write com.apple.finder ShowMountedServersOnDesktop -bool true && \
         defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true" \
    "Mostre ícones para discos rígidos, servidores e mídia removível na área de trabalho"

execute "defaults write com.apple.finder ShowRecentTags -bool false" \
    "Não mostra as tags atuais"

execute "defaults write -g AppleShowAllExtensions -bool true" \
    "Mostre as extensões de nome de arquivo"

execute "/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:iconSize 72' ~/Library/Preferences/com.apple.finder.plist && \
         /usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:IconViewSettings:iconSize 72' ~/Library/Preferences/com.apple.finder.plist" \
    "Defina o tamanho do ícone"

execute "/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:gridSpacing 1' ~/Library/Preferences/com.apple.finder.plist && \
         /usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:IconViewSettings:gridSpacing 1' ~/Library/Preferences/com.apple.finder.plist" \
    "Definir o tamanho do espaçamento da grade do ícone"

execute "/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:textSize 13' ~/Library/Preferences/com.apple.finder.plist && \
         /usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:IconViewSettings:textSize 13' ~/Library/Preferences/com.apple.finder.plist" \
    "Definir o tamanho do texto da etiqueta do ícone"

execute "/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:labelOnBottom true' ~/Library/Preferences/com.apple.finder.plist && \
         /usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:IconViewSettings:labelOnBottom true' ~/Library/Preferences/com.apple.finder.plist" \
    "Definir posição do rótulo do ícone"

execute "/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:showItemInfo true' ~/Library/Preferences/com.apple.finder.plist && \
         /usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:IconViewSettings:showItemInfo true' ~/Library/Preferences/com.apple.finder.plist" \
    "Mostrar item info"

execute "/usr/libexec/PlistBuddy -c 'Set :DesktopViewSettings:IconViewSettings:arrangeBy none' ~/Library/Preferences/com.apple.finder.plist && \
         /usr/libexec/PlistBuddy -c 'Set :StandardViewSettings:IconViewSettings:arrangeBy none' ~/Library/Preferences/com.apple.finder.plist" \
    "Definir o metódio de Sort"

killall "Finder" &> /dev/null

# Começando com o Mac OS X Mavericks as preferências são armazenadas em cache,
# Então, para que as coisas sejam configuradas corretamente usando `PlistBuddy`,
# O processo `cfprefsd` também precisa ser morto.


killall "cfprefsd" &> /dev/null
