**Work-In-Progress (Beta, 2020)** 

# Evandro Reis Dotfiles (macOS) [![Build Status](https://travis-ci.org/evandropaes/dotfiles.svg?branch=master)](https://travis-ci.org/evandropaes/dotfiles)

Antes de mais nada, aqui ficam meus agradecimentos ao [Victor Cavalcante](https://github.com/vcavalcante/) (grande amigo da Lambda3) que apresentou-me o conceito de Dotfiles e indicou-me seu tutorial. Valeu, brother. Agradecimentos também ao [Cătălin Mariș](https://github.com/alrra) pelos scrips e complementos. Estou baseando as configurações que seguem aqui no trabalho inicial deles. 

:warning: **AVISO:** Se você quiser usar esses dotfiles e scripts de configuração, primeiro faça um fork com o comando abaixo. **NÃO** os use sem saber o que está fazendo.  

```bash
git clone https://github.com/evandropaes/dotfiles.git ~/.dotfiles
```
Depois revise o código e remova tudo aquilo que você ache desnecessário. Os principais arquivos que você mudar são:


| Arquivo                      | O que faz                                           |
|------------------------------|-----------------------------------------------------|
| setup.sh                     | Entry point e hub de chamada para os outros scripts |
| .travis.yml                  | Configuração do ambiente de CI                      |
| create_local_config_files.sh | Criação das configurações locais (.local)           |

E revise os parâmetros das configurações (e suas preferências) em ~/scripts/os/preferences/macos:

| Script                 | Descrição                         |
|------------------------|-----------------------------------|
| app_store.sh           | Preferências da App Store        |
| chrome.sh              | Preferências para Google Chrome  |
| dashboard.sh           | Preferências para o Dashboard    |
| dock.sh                | Preferências para o Dock         |
| finder.sh              | Preferências do Finder |
| firefox.sh             | Preferências do Firefox |
| keyboard.sh            | Preferências do Teclado |
| language_and_region.sh | Preferências de Lingua e Região |
| maps.sh                | Preferências de Localização |
| photos.sh              | Preferências de fotos |
| safari.sh              | Preferências do Safari | 
| language_and_region.sh | Preferências de Língua e Região |
| maps.sh                | Preferências de Localização |
| photos.sh              | Preferências de fotos |
| safari.sh              | Preferências do Safari | 
| spectacle.sh           | Preferências do Spectacle |     
| terminal.sh            | Preferências do Terminal | 
| textedit.sh            | Preferências do TextEdit |
| trackpad.sh            | Preferências do Trackpad |
| transmission.sh        | Preferências do Transmission |
| twitter.sh             | Preferências do Twitter |
| ui_and_ux.sh           | Preferências da interace do usuário |
 

Não tente usar cegamente as configurações se você não sabe o que está fazendo. Use por sua conta e risco! É importante mudar alguns scripts para refletirem seu ambiente (como, por exemplo, seu username).

Os arquivos locais (.local) servem para você alterar as configurações sem precisar mexer no core dos Dotfiles.

Fique à vontade em mandar sugestões, correções e esculachos, mas só vou aceitar os não ofensivos e os pull requests se realmente tiverem valor.

## O que será instalado

Os scripts irão instalar aplicações via Brew e também via Apple Store (aqui você precisa se certificar se possui o direito às mesmas aplicações que eu. Caso contrário, configure o script mas.sh de acordo)

| Script | O que instala |
|--------|---------------|
| homebrew.sh | Brew |
| nvm.sh | Node.js |
| devtools.sh | Developer Tools, como Xamarin, Android Studio, .NET Core SDK, iTerm2, Unity e outros |
| databasetools.sh | MongoDB, MySQL, Azure Data Studio e SQLite Studio |
| visualstudiocode.sh  | Visual Studio for Mac |
| office.sh | Office 365, Teams e Zen Mind |
| docker.sh | Docker Community Edition |
| dailytools.sh | AppCleaner, DropBox, Powershell, Slack, SmartConverter, Spectacle, Teamviewer e VeraCrypt |
| browsers.sh | Browers, Chrome e Chromium |
| gpg.sh | GPG e Pinentry |
| jetbrains.sh | AppCode, CLion, IntelliJ IDEA, MPS, PhpStorm, PyCharm, RubyMine e WebStorm |
| misc.sh | Android File Transfer, The Unarchiver e Transmission | 
| misc_tools.sh | Miscelânias, como ShellCheck e Google Drive File Stream |
| video_tools.sh | FFmpeg |
| extratools.sh | 1Clipboard, Adobe Creative Cloud, Alfred, Caffeine, CleanMyMac, Dash, Disk Inventory, Flinto, Ganache, GoodSync, GPG Suite, Licecap, OmniGraffle, Skype, Spotify e VLC |
| mas.sh | Apps da App Store |
| web_font_tools.sh | Fontes <<*Atenção, são mais de 1000 fontes*>> | 

# Setup
#### Instalação e uso

* Fork este repositório por sua conta e risco (que medo)
* Clone o repositório
* *Leia* com atenção os passos abaixo
* Be happy :)
* Don't _blame me_ se algo der errado. 

## O que são os Dotfiles?

Dotfiles nada mais são do que arquivos que começam com "." (ponto), por isso o nome. A maioria dos software no macOS e no Linux guardam suas configurações em arquivos que por convenção começam com "." (esses arquivos são ocultos).

A ideia é que você possa guardar esses arquivos, restaurar na sua nova máquina e ter de volta as configurações que você já estava acostumado. Mas os Dotfiles sozinhos não fazem mágica, por isso escrevi esse manual. Além deles vamos usar scripts shell para automatizar algumas coisas, tais como o brew para instalar software, e outras coisinhas a mais.

# macOS
## Passo-a-passo for newbies (macOS)

### 1. Atualize o macOS  

Garanta que tudo esteja atualizado.

1. Vá até a App Store e clique em Updates. Deixe o macOS fazer seu trabalho, clicando em Update All.

### 2. Instale o [Xcode](https://developer.apple.com/xcode/) e o ["Command Line Tools"](https://developer.apple.com/downloads/index.action)

1. Vá até a App Store e install Xcode.
2. Abra e aceite os termos
3. Então vá ate o terminal e instale "Command Line Tools":

```sh
  xcode-select --install
```

### 3. Instale o Visual Studio Code (ou outro editor de seu gosto)

Vá até o site do [Visual Studio Code](https://code.visualstudio.com/download) e clique no link correspondente (no caso macOS).  

Ou clique no link abaixo.

```sh
https://go.microsoft.com/fwlink/?LinkID=620882
```

### 4. Clone o repositório Git

Vá até o [meu repositório Dotfiles](https://github.com/evandropaes/dotfiles) e faça fork para o seu github. Isso é muito importante, pois você irá fazer modificações nesses arquivos e a ideia é que você guarde no seu github para quando precisar recuperar.

Clone o repositório para o diretório ~/.dotfiles

```sh
git clone https://github.com/evandropaes/dotfiles.git ~/.dotfiles
```

### 5. Executando o setup.sh

Para configurar os `Dotfiles`, execute o snippet apropriado no terminal:

(:warning: **NÃO** execute o "setup.sh" se você não entender completamente o que ele faz] (scripts/os/setup.sh). Sério, **NÃO EXECUTE**!)

| OS | Snippet |
|:---|:--------|
| `macOS` | `bash -c "$(curl -LsS https://raw.github.com/evandropaes/dotfiles/master/scripts/os/setup.sh)"` |

Só isso! :sparkles:

O setup.sh irá:

* Fazer o download dos dotfiles no seu computador (default `~/Projects/Dotfiles`)
* Criar os diretórios [directories](scripts/os/create_directories.sh)
* [Symlink](scripts/os/create_symbolic_links.sh) the 
  [`git`](scripts/git),
  [`shell`](scripts/shell), and
* Instalar as aplicações e ferramentass de linha de comando para 
  [`macOS`](scripts/os/install/macos)
* Redefinir as preferências
  [`macOS`](scripts/os/preferences/macos)  

## Personalizando

### Configurações Locais

Os `dotfiles` podem ser facilmente estendidos para atender aos requisitos locais adicionais usando os seguintes arquivos:

#### `~/.bash.local`

O arquivo `~ / .bash.local` será automaticamente executado após todos os outros arquivos relacionados do` bash` (scripts/shell), permitindo que seu conteúdo adicione ou substitua os alias, configurações, PATH, Etc.

Aqui está um exemplo muito simples de um arquivo `~/.bash.local`:

```bash
#!/bin/bash

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set local aliases.

alias starwars="telnet towel.blinkenlights.nl"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set PATH additions.

PATH="$PATH:$HOME/Projects/Dotfiles/scripts/bin"

export PATH

```

#### `~/.gitconfig.local`

O arquivo `~/.gitconfig.local` será automaticamente incluído após as configurações de `~/.gitconfig`, permitindo que seu conteúdo sobrescreva ou adicione as configurações existentes `git`.

__Nota:__ Use `~/.gitconfig.local` para armazenar informações confidenciais, como as credenciais de usuários `git`, por exemplo:

```bash
[commit]

    # Sign commits using GPG.
    # https://help.github.com/articles/signing-commits-using-gpg/

    gpgsign = true


[user]

    name = Evandro Paes
    email = evandropaes@me.com
    signingkey = XXXXXXXX
```

### Forks

Se você decidir forkar este projeto, *NÃO SE ESQUEÇA DE SUBSTITUIR MEU NOME DE USUÁRIO COM O SEU PRÓPRIO* no [`setup`](#setup) e no `setup` script.

## Atualizações

Para atualizar os dotfiles, você pode executar o script [`setup`](scripts/os/setup.sh) ou, se você quiser apenas atualizar uma parte específica, execute o script apropriado [`os`](scripts/os).

## Licença

O código está disponível sob a [licença MIT](LICENSE.txt).

## Trabalhe feliz

:)
