#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


login_to_app_store() {


    ask "Entre com seu Apple ID: " && printf "\n"

    execute "mas signin $(get_answer)"

}

install_mas() {

    print_in_purple "\n   Instalando o MAS\n\n"
    brew_install "Mac App Store CLI" "mas"

}

install_mas_apps() {

    print_in_purple "\n** Instalando Apps da App Store\n\n"

    execute "mas install 443987910	" "1Password (6.8.1)"
    execute "mas install 918858936	" "Airmail 3 (3.3.2)"
    execute "mas install 1037126344	" "Apple Configurator 2 (2.4)"
    execute "mas install 414209656	" "Better Rename 9 (9.52)"
    execute "mas install 492594411	" "Cappuccino (2.07)"
    execute "mas install 402355593	" "Chronicle (7.0.2)"
    execute "mas install 445279824	" "ColorChooser (1.0.6)"
    execute "mas install 448189857	" "CPULed (1.3)"
    execute "mas install 921458519	" "DrCleaner (3.2.1)"
    execute "mas install 971826370	" "Extractor (1.3)"
    execute "mas install 424389933	" "Final Cut Pro (10.3.4)"
    execute "mas install 412448059	" "ForkLift (2.6.6)"
    execute "mas install 486967844	" "FreeMemory Pro (1.9)"
    execute "mas install 445770608	" "Go2Shell (1.2.2)"
    execute "mas install 409681476	" "Headlines (1.6)"
    execute "mas install 771076721	" "Hotspot Shield (1.5.3)"
    execute "mas install 490152466	" "iBooks Author (2.5)"
    execute "mas install 408981434	" "iMovie (10.1.6)"
    execute "mas install 415492014	" "Inpaint (3.0.2)"
    execute "mas install 431353913	" "Instaview (1.0.4)"
    execute "mas install 408981381	" "iPhoto (9.6.1)"
    execute "mas install 441729031	" "iSoftPhone (4.1506)"
    execute "mas install 409183694  " "Keynote"
    execute "mas install 405399194	" "Kindle (1.20.2)"
    execute "mas install 430255202	" "Mactracker (7.6.6)"
    execute "mas install 1114591412	" "Memory Clean 2 (1.5)"
    execute "mas install 784801555	" "Microsoft OneNote (15.37)"
    execute "mas install 715768417	" "Microsoft Remote Desktop (8.0.27319)"
    execute "mas install 533491939	" "Mint QuickView (2.0.1)"
    execute "mas install 434290957	" "Motion (5.3.2)"
    execute "mas install 461788075	" "Movist (1.4.1)"
    execute "mas install 412581753	" "Navicat for MySQL Lite (9.1.5)"
    execute "mas install 412406630	" "Navicat for PostgreSQL Lite (9.1.5)"
    execute "mas install 412149217	" "Navicat for SQL Server Lite (9.1.5)"
    execute "mas install 409203825  " "Numbers"
    execute "mas install 1238129192	" "Open Any File (1.2)"
    execute "mas install 604802021	" "Outline (3.21.1)"
    execute "mas install 409201541  " "Pages"
    execute "mas install 407963104	" "Pixelmator (3.6)"
    execute "mas install 490001312	" "Screen Saver Lite (1.0.0)"
    execute "mas install 897118787	" "Shazam (1.2.3)"
    execute "mas install 863486266	" "SketchBook (8.4.1)"
    execute "mas install 404243625	" "SketchBookExpress (6.2.5)"
    execute "mas install 425955336	" "Skitch (2.8)"
    execute "mas install 447513724	" "SmartConverter (2.3.0)"
    execute "mas install 413026679	" "Socialite (1.5.4)"
    execute "mas install 1153157709	" "Speedtest (1.3)"
    execute "mas install 405892506	" "StreamToMe (3.9.7)"
    execute "mas install 747648890	" "Telegram (3.1.2)"
    execute "mas install 946399090	" "Telegram Desktop (1.1.18)"
}

main() {

    print_in_purple "\n • Instalando apps da Mac App Store\n\n"

    install_mas
    login_to_app_store
    install_mas_apps

}

main
