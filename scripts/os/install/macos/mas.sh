#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


login_to_app_store() {


    ask "Entre com seu Apple ID: " && printf "\n"

    execute "mas signin '$(get_answer)'"

}

install_mas() {

    print_in_purple "\n   Instalando o MAS\n\n"
    brew_install "Mac App Store CLI" "mas"

}

upgrade_mas_apps() {

    execute "mas upgrade" "Atualizando Apps"
}

install_mas_apps() {

    print_in_purple "\n   >>> Instalando Apps da App Store\n\n"

    execute "mas install 1333542190 " "1Password 7 - Password Manager (7.2.2)"
    execute "mas install 1063663640	" "Better Rename 10 (10.37)"
    execute "mas install 1286725949	" "Cappuccino­ (10.0.12)"
    execute "mas install 424389933	" "Final Cut Pro (10.4.4)"
    execute "mas install 412448059	" "ForkLift - File Manager and FTP/SFTP/WebDAV/Amazon (2.6.6)"
    execute "mas install 445770608	" "Go2Shell (1.2.2)"
    execute "mas install 409183694  " "Keynote (8.3)"
    execute "mas install 405399194	" "Kindle (1.23.2)"
    execute "mas install 1295203466	" "Microsoft Remote Desktop 10 (10.2.4)"
    execute "mas install 461788075	" "Movist (2.0.5)"
    execute "mas install 1257393420 " "Navicat 12 for MySQL (12.1.12)"
    execute "mas install 1257393430 " "Navicat 12 for PostgreSQL (12.1.12)"
    execute "mas install 1257393808 " "Navicat 12 for SQLite (12.1.12)"
    execute "mas install 1257393816 " "Navicat 12 for MariaDB (12.1.12)"
    execute "mas install 1257393800 " "Navicat 12 for SQL Server (12.1.12)"
    execute "mas install 1414298429 " "Navicat 12 for MongoDB (12.1.12)"
    execute "mas install 1257393716 " "Navicat 12 for Oracle (12.1.12)"
    execute "mas install 409203825  " "Numbers (5.3)"
    execute "mas install 409201541  " "Pages (7.3)"
    execute "mas install 407963104	" "Pixelmator (3.8.1)"
    execute "mas install 863486266	" "Autodesk SketchBook  (8.6.1)"
    execute "mas install 1208561404 " "Kaspersky VPN Connection   (2.1.1) "
    execute "mas install 1140461273 " "Kaspersky Password Manager (9.1.1)"
    execute "mas install 1268962404 " "Smart JSON Editor (1.4.5)"
    execute "mas install 1116599239 " "NordVPN IKE - Unlimited VPN (4.8.7)"
    execute "mas install 1147396723 " "WhatsApp Desktop (0.3.1850)"
    execute "mas install 803453959  " "Slack (3.3.3)"
    execute "mas install 823766827  " "OneDrive (18.214.1021)"
    execute "mas install 405843582  " "Alfred (1.2)"
    execute "mas install 406056744  " "Evernote (7.7)"
    execute "mas install 1278508951 " "Trello (2.10.8)"
}

main() {

    print_in_purple "\n • Instalando apps da Mac App Store\n\n"

    install_mas
    login_to_app_store
    upgrade_mas_apps
    install_mas_apps

}

main
