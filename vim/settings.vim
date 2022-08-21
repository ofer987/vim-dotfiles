let vimsettings = '~/.vim/settings'
let uname = system('uname -s')

for fpath in split(globpath('~/.vim/autoload', '*.vim'), '\n')
  exe 'source' fpath
endfor

for fpath in split(globpath(vimsettings, '*.vim'), '\n')

  if (fpath == expand(vimsettings) . '/yadr-keymap-mac.vim') && uname[:4] ==? 'linux'
    continue " skip mac mappings for linux
  endif

  if (fpath == expand(vimsettings) . '/yadr-keymap-linux.vim') && uname[:4] !=? 'linux'
    continue " skip linux mappings for mac
  endif

  exe 'source' fpath
endfor

" Visual
set wrap
set relativenumber

set listchars=tab:\ ·
set listchars+=trail:·
set listchars+=extends:»,precedes:«

" case-insensitive
command W :w|e
command Q q

" Toggle NERDTree
nnoremap <silent> <leader>` :NERDTreeToggle<CR>

" Switch to previous file
nnoremap <leader><tab> :b#<cr>

"Don't ask to save when changing buffers (i.e. when jumping to a type definition)
set hidden

" Scroll between errors
noremap <leader>qn :cn<CR>
noremap <leader>qp :cp<CR>

" Select the whole line (without newline)
nnoremap <leader>vg ^vg_

" Paste content while remembering what was just pasted
vmap p pgvy
vmap P Pgvy

map <leader>e :w \| bd<CR>

" Do not use Perl provider
let g:loaded_perl_provider = 0
