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
" Use ALE to show Lsp errors/diagnostics/errors
" In other words, Lsp errors/diagnostics/errors do not show using Lsp
Plug 'dense-analysis/ale'
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

" Conquer of Completion (CoC) for Language Server Protocol (LSP)
" To install TypeScript LSP,
"   Run :CocInstall coc-tsserver
" To install HTML/CSS/SASS/Less LSP,
"   Run :CocInstall coc-css
" To install clangd for C/C++/Objective-C LSP,
"   1. Navigate to https://clangd.llvm.org/installation.html
"   2. Run :CocInstall coc-clangd
" To install JSON LSP,
"   Run :CocInstall coc-json
" To install Bash LSP,
"   Run :CocInstall coc-sh
" To install Python 3 LSP,
"   Run :CocInstall coc-pyright
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" HTML
Plug 'AndrewRadev/tagalong.vim'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

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

call plug#end()
