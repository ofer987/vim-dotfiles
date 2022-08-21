autocmd FileType elm nnoremap <leader>el :ElmEvalLine<CR>
autocmd FileType elm vnoremap <leader>es :<C-u>ElmEvalSelection<CR>
autocmd FileType elm nnoremap <leader>em :ElmMakeCurrentFile<CR>
autocmd FileType elm nnoremap <leader>ew :ElmFormat<CR>
autocmd FileType elm nnoremap <leader>ee :ElmFormat<CR>
autocmd FileType elm nnoremap <leader>ef :ElmFormat<CR>
autocmd FileType elm nnoremap <leader>eh :ElmBrowseDocs<CR>

autocmd FileType elm set tabstop=8
autocmd FileType elm set softtabstop=8
autocmd FileType elm set shiftwidth=4
