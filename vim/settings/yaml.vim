function! PreviousJob() abort
  let current_position = getpos('.')
  let current_line = current_position[1]
  let first_line = 0

  let previous_line = current_line - 1
  while previous_line >= first_line
    let line = getline(previous_line)

    if line =~ '^\s*- '
      let new_position = [current_position[0], previous_line, current_position[2], current_position[3]]

      call setpos('.', new_position)
      return
    endif

    let previous_line = previous_line - 1
  endwhile

  return 1
endfunction

function! NextJob() abort
  let current_position = getpos('.')
  let current_line = current_position[1]
  let last_line = getpos('$')[1]

  let next_line = current_line + 1
  while next_line <= last_line
    let line = getline(next_line)

    if line =~ '^\s*- '
      let new_position = [current_position[0], next_line, current_position[2], current_position[3]]

      call setpos('.', new_position)
      return
    endif

    let next_line = next_line + 1
  endwhile

  return 1
endfunction

autocmd FileType yaml set shiftwidth=2
autocmd FileType yaml map gk :call PreviousJob()<CR>
autocmd FileType yaml map gj :call NextJob()<CR>
