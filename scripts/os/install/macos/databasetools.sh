#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Bancos de Dados e Tools\n\n"


brew_install "SQLite Studio" "sqlitestudio" "caskroom/cask" "cask"
brew_install "MongoDB" "mongodb" "caskroom/cask" "cask"
brew_install "MongoDB Compass Community" "mongodb-compass-community" "caskroom/cask" "cask"
brew_install "Azure Data Studio" "azure-data-studio" "caskroom/cask" "cask"
brew_install "MySQL Workbench" "mysqlworkbench" "caskroom/cask" "cask"
brew_install "MySQL Shell" "mysql-shell" "caskroom/cask" "cask"
brew_install "MySQL Utilities" "mysql-utilities" "caskroom/cask" "cask"

print_in_purple "\n   Navicat Suite\n\n"


brew_install "Navicat for MySQL" "navicat-for-mysql" "caskroom/cask" "cask"
brew_install "Navicat for SQLite" "navicat-for-sqlite" "caskroom/cask" "cask"
brew_install "Navicat for MariaDB" "navicat-for-mariadb" "caskroom/cask" "cask"
brew_install "Navicat for PostgreSQL" "navicat-for-postgresql" "caskroom/cask" "cask"
brew_install "Navicat for SQL Server" "navicat-for-sql-server" "caskroom/cask" "cask"
brew_install "Navicat Premium Essentials " "navicat-premium-essentials" "caskroom/cask" "cask"
brew_install "Navicat Data Modeler Essentials" "navicat-data-modeler-essentials" "caskroom/cask" "cask"
brew_install "Navicat Premium" "navicat-premium" "caskroom/cask" "cask"
brew_install "Navicat Data Modeler" "navicat-data-modeler" "caskroom/cask" "cask"
