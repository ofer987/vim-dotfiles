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

nmap <silent> gd <Plug>(coc-definition)
map <silent> <leader>ft <Plug>(coc-type-definition)
map <silent> <leader>fi <Plug>(coc-implementation)
map <silent> <leader>fu <Plug>(coc-references)
map <silent> <leader>nm <Plug>(coc-rename)
map <silent> <C-n> <Plug>(coc-diagnostic-next)
map <silent> <C-p> <Plug>(coc-diagnostic-prev)

map <silent> <leader>fl :CocList outline<cr>
map <silent> <leader>sp :CocRestart<cr>

map <silent> <leader>qo :CocListResume<cr>
map <silent> <leader>qc :CocListCancel<cr>
map <silent> <leader>qp :CocPrev<cr>
map <silent> <leader>qn :CocNext<cr>
