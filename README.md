# Vim .files

## Installation

### Vim

First set up **Vim** by setting up its dotfiles,

1. `ln -s ./vim ~/.vim`
1. `ln -s ./vimrc ~/.vimrc`

Then install the plugin manager **vim-plug**, https://github.com/junegunn/vim-plug

Then run, `vim +PlugInstall +PlugUpdate +PlugClean`

### Language Server Support

For analysis of languages such as JavaScript, TypeScript, Bash, and HTML and CSS,

#### Install node.js and npm

Install **node.js** and **npm** from  https://nodejs.org/en/download/

#### Install the language servers,

1. `npm install -g typescript typescript-language-server`
1. `npm install -g vim-language-server`
1. `npm install -g bash-language-server`
1. `npm install -g vscode-css-languageserver-bin`
1. `npm install -g vscode-html-languageserver-bin`
