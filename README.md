# Vim .files

## Installation

### Vim

First set up **Vim** by setting up its dotfiles,

1. `ln -s ./vim ~/.vim`
1. `ln -s ./vimrc ~/.vimrc`

Then install the plugin manager **vim-plug**, https://github.com/junegunn/vim-plug

Then run, `vim +PlugInstall +PlugUpdate +PlugClean`

### Language Server Support

Supports analysis of,

1. C/C++/Objective-C
1. HTML/CSS/SASS/SCSS/Less
1. TypeScript/JavaScript
1. React
1. Python 3
1. Bash

#### Install node.js and npm

Install **node.js** and **npm** from https://nodejs.org/en/download/

#### For C/C++/Objective-C

1. Navigate to https://clangd.llvm.org/installation.html
1. Run `:CocInstall coc-clangd` in Vim

#### For the other language servers

In Vim run,

1. `:CocInstall coc-css` for HTML/CSS/SASS/SCSS/Less
1. `:CocInstall coc-tsserver` for TypeScript/JavaScript and React
1. `:CocInstall coc-pyright` for Python 3
1. `:CocInstall coc-sh` for Bash
