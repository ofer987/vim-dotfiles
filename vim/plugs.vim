" ========================================
" Vim plugin configuration
" ========================================
"
" Filetype off is required by plug
" NOTE: Installation instructions can be found at
" https://github.com/junegunn/vim-plug
" NOTE: Only works on Neovim as of November 2020
filetype off

call plug#begin('~/.yadr/vim/plugged')

Plug 'christoomey/vim-tmux-navigator'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ap/vim-css-color'
Plug 'chr4/nginx.vim'
" Run these commands as well
" npm install -g vim-language-server
" npm install -g bash-language-server
" npm install -g vscode-css-languageserver-bin
" npm install -g vscode-html-languageserver-bin
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
" Use ALE to show Lsp errors/diagnostics/errors
" In other words, Lsp errors/diagnostics/errors do not show using Lsp
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'andreypopp/asyncomplete-ale.vim'
Plug 'rhysd/vim-lsp-ale'
Plug 'prabirshrestha/asyncomplete-emmet.vim'
Plug 'mattn/emmet-vim'
Plug 'ofer987/vim-caser'
Plug 'ofer987/vim-rooter'
Plug 'plasticboy/vim-markdown'
Plug 'justinmk/vim-sneak'
Plug 'rking/ag.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'vim-scripts/camelcasemotion'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'wellle/targets.vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'junegunn/vim-easy-align'

" JavaScript and TypeScript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'

" HTML
Plug 'AndrewRadev/tagalong.vim'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Ruby
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'vim-scripts/matchit.zip'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" Fish
Plug 'ofer987/vim-fish'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" PowerShell
Plug 'PProvost/vim-ps1'

" Lightline
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

" C/C++
" brew install llvm
Plug 'piec/vim-lsp-clangd'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

call plug#end()
