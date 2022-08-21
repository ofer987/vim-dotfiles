" General

" JavaScript
autocmd FileType javascript.jsx set shiftwidth=2

" TypeScript
autocmd FileType typescript set shiftwidth=2
autocmd FileType typescriptreact set shiftwidth=2
autocmd FileType typescript.tsx set shiftwidth=2

" JSON
autocmd FileType json set shiftwidth=2

" Prettier

" Require a config file to be present
let g:prettier#autoformat_config_present = 1

" Do not autoformat a file
let g:prettier#autoformat = 0
" Do not use tabs
let g:prettier#config#use_tabs = 0

" Do not require the @format or @prettier pragmas
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#require_pragma = 'false'
