#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code e Extensões\n\n"


brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"

# execute "code --install-extension ms-vscode.cpptools" \
#     "C++ Tools"
execute "code --install-extension CoenraadS.bracket-pair-colorizer"  \
	"Bracket Pair Colorizer"
execute "code --install-extension DSKWRK.vscode-generate-getter-setter"  \
	"Generate Getter-Setter"
execute "code --install-extension DavidAnson.vscode-markdownlint"  \
	"Markdown Lint"
execute "code --install-extension DotJoshJohnson.xml"  \
	"XML Tools"
execute "code --install-extension EditorConfig.EditorConfig"  \
	"Editor Config"
# execute "code --install-extension Equinusocio.vsc-material-theme"  \
# 	"Material Theme"
execute "code --install-extension HookyQR.beautify"  \
	"Beautiful"
execute "code --install-extension KnisterPeter.vscode-github"  \
	"Suporte ao GitHub"
execute "code --install-extension PKief.material-icon-theme"  \
	"Material Icon Theme"
execute "code --install-extension PeterJausovec.vscode-docker"  \
	"Suporte a Docker"
execute "code --install-extension Shan.code-settings-sync"  \
	"Shan's Settings Sync"
execute "code --install-extension Sophisticode.php-formatter"  \
	"PHP Formatter"
execute "code --install-extension Unity.unity-debug"  \
	"Unity Debug"
execute "code --install-extension Zignd.html-css-class-completion"  \
	"CSS Class Completion"
execute "code --install-extension abusaidm.html-snippets"  \
	"HTML Snippets"
execute "code --install-extension alefragnani.project-manager"  \
	"Project Manager"
execute "code --install-extension anseki.vscode-color"  \
	"Colorize"
execute "code --install-extension austin.code-gnu-global"  \
	"GNU Global"
execute "code --install-extension christian-kohler.npm-intellisense"  \
	"NPM Intellisense"
execute "code --install-extension christian-kohler.path-intellisense"  \
	"Path Intellisense"
execute "code --install-extension codezombiech.gitignore"  \
	".gitignore"
execute "code --install-extension dbaeumer.jshint"  \
	"JSHint"
execute "code --install-extension dbaeumer.vscode-eslint"  \
	"ESLint"
execute "code --install-extension dbankier.vscode-instant-markdown"  \
	"Instant Markdown"
execute "code --install-extension donjayamanne.git-extension-pack"  \
	"Git Extension Pack"
execute "code --install-extension donjayamanne.githistory"  \
	"Git History"
execute "code --install-extension donjayamanne.jquerysnippets"  \
	"JQuery Snippets"
execute "code --install-extension donjayamanne.python"  \
	"Suporte ao Python"
execute "code --install-extension dzannotti.vscode-babel-coloring"  \
	"Colorização Babel"
execute "code --install-extension eamodio.gitlens"  \
	"Git Lens"
execute "code --install-extension ecmel.vscode-html-css"  \
	"HTML/CSS"
execute "code --install-extension eg2.tslint"  \
	"TSLint"
execute "code --install-extension eg2.vscode-npm-script"  \
	"npm Script"
execute "code --install-extension emmanuelbeziat.vscode-great-icons"  \
	"Great Icons"
execute "code --install-extension felipecaputo.git-project-manager"  \
	"Project Manager"
execute "code --install-extension felixfbecker.php-debug"  \
	"PHP Debug"
execute "code --install-extension felixfbecker.php-intellisense"  \
	"PHP Intellisense"
execute "code --install-extension felixfbecker.php-pack"  \
	"PHP Pack"
execute "code --install-extension fknop.vscode-npm"  \
	"npm"
execute "code --install-extension formulahendry.auto-close-tag"  \
	"Auto close Tag"
execute "code --install-extension formulahendry.code-runner"  \
	"Code Runner"
execute "code --install-extension formulahendry.terminal"  \
	"Terminal"
execute "code --install-extension hars.CppSnippets"  \
	"C++ Snippets"
execute "code --install-extension hbenl.vscode-firefox-debug"  \
	"Firefox Debug"
execute "code --install-extension huizhou.githd"  \
	"githd"
execute "code --install-extension ionutvmi.path-autocomplete"  \
	"Path Autocomplete"
execute "code --install-extension jchannon.csharpextensions"  \
	"C# Extensions"
execute "code --install-extension johnpapa.Angular2"  \
	"Angular TypeScript Snippets"
execute "code --install-extension letmaik.git-tree-compare"  \
	"Git Tree Compare"
execute "code --install-extension michelemelluso.code-beautifier"  \
	"Code Beautifier"
execute "code --install-extension michelemelluso.gitignore"  \
	".gitignore Again"
execute "code --install-extension mkaufman.HTMLHint"  \
	" ** Comment ** "
execute "code --install-extension ms-mssql.mssql"  \
	"HTML Hint"
execute "code --install-extension ms-vscode.csharp"  \
	"Suporte ao C#"
execute "code --install-extension ms-vscode.mono-debug"  \
	"Mono Debug"
execute "code --install-extension ms-vscode.PowerShell"  \
	"Suporte ao Powershell"
execute "code --install-extension ms-vsts.team"  \
	"Suporte ao VSTS"
execute "code --install-extension msjsdiag.debugger-for-chrome"  \
	"Chrome Debug"
execute "code --install-extension naumovs.color-highlight"  \
	"Color Highlight"
execute "code --install-extension qinjia.view-in-browser"  \
	"View in Browser"
execute "code --install-extension rebornix.Ruby"  \
	"Suporte ao Ruby"
execute "code --install-extension rogalmic.bash-debug"  \
	"Bash Debug"
execute "code --install-extension samschneller.git-add-remote"  \
	" ** Comment ** "
execute "code --install-extension samschneller.git-pull-upstream"  \
	"Git Pull Upstream"
execute "code --install-extension shaharkazaz.git-merger"  \
	"Git Merger"
execute "code --install-extension spywhere.guides"  \
	"Guides"
execute "code --install-extension streetsidesoftware.code-spell-checker"  \
	"Code Spell Checker"
execute "code --install-extension sysoev.vscode-open-in-github"  \
	"Open in GitHub"
execute "code --install-extension tht13.python"  \
	"Suporte ao Python"
execute "code --install-extension timonwong.shellcheck"  \
	"Shellcheck"
execute "code --install-extension vsmobile.cordova-tools"  \
	"Suporte ao Cordova"
execute "code --install-extension vsmobile.vscode-react-native"  \
	"Suporte ao React Native"
execute "code --install-extension waderyan.gitblame"  \
	"Git Blame"
execute "code --install-extension wcwhitehead.bootstrap-3-snippets"  \
	"Bootstrap Snippets"
execute "code --install-extension webfreak.debug"  \
	"Debug"
execute "code --install-extension xabikos.JavaScriptSnippets"  \
	"JavaScript Snippets"
execute "code --install-extension ziyasal.vscode-open-in-github" \
    "Open in GitHub"

execute "code --install-extension danwahlin.angular2-snippets" \
    "Angular 4 and TypeScript/HTML Code Snippets"


