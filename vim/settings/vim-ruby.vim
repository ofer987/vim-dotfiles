let g:ruby_indent_block_style = 'do'
let g:ruby_indent_assignment_style = 'variable'

autocmd FileType ruby map gj ]m
autocmd FileType ruby map gk [m

function! InsertRubyDebugger(text) abort
  " Current position
  let currentpos = getcurpos()

  " Insert debugging statement
  call append(getcurpos()[1] - 1, repeat(' ', indent('.')) . a:text)

  " Revert to previous position
  call setpos('.', currentpos)
endfunction

autocmd FileType ruby map <leader>ds :call InsertRubyDebugger("require 'pry-byebug'")<CR>
autocmd FileType ruby map <leader>dp :call InsertRubyDebugger("binding.pry")<CR>
