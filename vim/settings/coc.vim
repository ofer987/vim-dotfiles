let g:coc_disable_startup_warning = 1

autocmd BufEnter * let g:coc_start_at_startup = 0

autocmd BufEnter * let g:asyncomplete_auto_completeopt = 1
autocmd BufEnter * let g:asyncomplete_auto_popup = 1

autocmd BufEnter *.sh,*.tsx,*.js,*.ts,*.css,*.scss,*.less,*.json,*.go let g:coc_start_at_startup = 1
autocmd BufEnter *.sh,*.tsx,*.js,*.ts,*.css,*.scss,*.less,*.json,*.go call execute('CocEnable')
autocmd BufEnter *.sh,*.tsx,*.js,*.ts,*.css,*.scss,*.less,*.json,*.go let g:asyncomplete_auto_completeopt = 0
autocmd BufEnter *.sh,*.tsx,*.js,*.ts,*.css,*.scss,*.less,*.json,*.go let g:asyncomplete_auto_popup = 0

autocmd FileType scss setl iskeyword+=@-@
" Do not change cursor style if <C-c> is pressed
let g:coc_disable_transparent_cursor = 1

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm()
      \: "\<Tab>"

" TypeScript
" npm install -g typescript typescript-language-server
" And then run :CocInstall coc-tsserver in Neovim
autocmd FileType typescriptreact,javascript,typescript,typescript.tsx,css,scss,less,json,go nmap <silent> gd <Plug>(coc-definition)
autocmd FileType typescriptreact,javascript,typescript,typescript.tsx,css,scss,less,json,go map <silent> <leader>ft <Plug>(coc-type-definition)
autocmd FileType typescriptreact,javascript,typescript,typescript.tsx,css,scss,less,json,go map <silent> <leader>fi <Plug>(coc-implementation)
autocmd FileType typescriptreact,javascript,typescript,typescript.tsx,css,scss,less,json,go map <silent> <leader>fu <Plug>(coc-references)
autocmd FileType typescriptreact,javascript,typescript,typescript.tsx,css,scss,less,json,go map <silent> <leader>nm <Plug>(coc-rename)
autocmd FileType typescriptreact,javascript,typescript,typescript.tsx,css,scss,less,json,go map <silent> <C-n> <Plug>(coc-diagnostic-next)
autocmd FileType typescriptreact,javascript,typescript,typescript.tsx,css,scss,less,json,go map <silent> <C-p> <Plug>(coc-diagnostic-prev)
autocmd FileType typescriptreact,javascript,typescript,typescript.tsx,css,scss,less,json,go map <silent> <leader>fl :CocList outline<cr>
autocmd FileType typescriptreact,javascript,typescript,typescript.tsx,css,scss,less,json,go map <silent> <leader>sp :CocRestart<cr> | let g:asyncomplete_auto_popup = 0
