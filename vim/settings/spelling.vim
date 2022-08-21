autocmd FileType md setlocal spell spelllang=en_gb
autocmd FileType markdown setlocal spell spelllang=en_gb
autocmd FileType gitcommit setlocal spell spelllang=en_gb

map <leader>son :setlocal spell spelllang=en_gb<cr>
map <leader>soff :setlocal spell spelllang=<cr>
map <leader>sync :mkspell! ~/.yadr/vim/spell/en.utf-8.add<cr>
