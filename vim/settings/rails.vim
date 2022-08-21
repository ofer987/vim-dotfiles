" Better key maps for switching between view/controller/model
" in Rails application if directory has the form `/app/{type}s`
autocmd FileType ruby nnoremap <leader>vv :Eview<cr>
autocmd FileType ruby nnoremap <leader>cc :Econtroller<cr>
autocmd FileType ruby nnoremap <leader>mm :Emodel<cr>
