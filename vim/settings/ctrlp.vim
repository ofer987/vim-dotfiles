if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --cached --exclude-standard --others']

let g:ctrlp_show_hidden = 1

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 0

nnoremap <silent> <leader>t :CtrlP ./<CR>
let g:ctrlp_map = ''

" Additional mapping for buffer search
nnoremap <silent> <leader>b :CtrlPBuffer<cr>

" Clear the cache
nnoremap <leader>ct :ClearCtrlPCache<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
autocmd FileType ruby map <leader>ja :CtrlP app/assets<CR>
autocmd FileType ruby map <leader>jm :CtrlP app/models<CR>
autocmd FileType ruby map <leader>jc :CtrlP app/controllers<CR>
autocmd FileType ruby map <leader>jv :CtrlP app/views<CR>
autocmd FileType ruby map <leader>jh :CtrlP app/helpers<CR>
autocmd FileType ruby map <leader>jsm :CtrlP spec/models<CR>
autocmd FileType ruby map <leader>jsc :CtrlP spec/controllers<CR>
autocmd FileType ruby map <leader>jsv :CtrlP spec/views<CR>
autocmd FileType ruby map <leader>jsh :CtrlP spec/helpers<CR>
autocmd FileType ruby map <leader>jss :CtrlP spec/support<CR>

autocmd FileType elixir map <leader>jm :CtrlP web/models<CR>
autocmd FileType elixir map <leader>jc :CtrlP web/controllers<CR>
autocmd FileType elixir map <leader>jv :CtrlP web/views<CR>
autocmd FileType elixir map <leader>jt :CtrlP web/templates<CR>
