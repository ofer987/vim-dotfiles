augroup JsonToJsonc
  autocmd! FileType json set filetype=jsonc
augroup END

function! Jsonlint() abort
  if (&filetype != "json" && &filetype != "jsonc")
    return 1
  endif

  " Start at top of file
  1

  " Lint the json
  let json = split(system(['jsonlint', expand('%')]), '\n', 1)

  " add the linted json
  call append(getcurpos()[1] - 1, json)

  " Delete old json
  .-1,$d

  " Rewrite buffer to file
  write %
endfunction

" :Jsonlint to lint the file
autocmd! FileType json command! Jsonlint :call Jsonlint()
