" Settings
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
let g:asyncomplete_auto_popup = 1

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes

  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> <leader>gd <plug>(lsp-definition)
  nmap <buffer> <leader>fi <plug>(lsp-implementation)
  nmap <buffer> <leader>ft <plug>(lsp-type-definition)
  nmap <buffer> <leader>fu <plug>(lsp-references)
  nmap <buffer> <leader>nm <plug>(lsp-rename)
  nmap <buffer> K <plug>(lsp-hover)
  nmap <buffer> <leader>K <plug>(lsp-hover)

  let g:lsp_format_sync_timeout = 1000
  autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
endfunction

" JavaScript
if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
      \ 'name': 'javascript support using typescript-language-server',
      \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
      \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
      \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact']
      \ })
endif

" TypeScript
if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
        \ 'whitelist': ['typescript', 'typescript.tsx', 'typescriptreact'],
        \ })
endif

" Vimscript
if executable('vim-language-server')
  augroup LspVim
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
          \ 'name': 'vim-language-server',
          \ 'cmd': {server_info->['vim-language-server', '--stdio']},
          \ 'whitelist': ['vim'],
          \ 'initialization_options': {
          \   'vimruntime': $VIMRUNTIME,
          \   'runtimepath': &rtp,
          \ }})
  augroup END
endif

" Emmet
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emmet#get_source_options({
      \ 'name': 'emmet',
      \ 'whitelist': ['html'],
      \ 'completor': function('asyncomplete#sources#emmet#completor'),
      \ }))

au User asyncomplete_setup call asyncomplete#ale#register_source({
      \ 'name': 'reason',
      \ 'linter': 'flow',
      \ })

" Bash
if executable('bash-language-server')
  augroup LspBash
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
          \ 'name': 'bash-language-server',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
          \ 'allowlist': ['sh', 'gitignore'],
          \ })
  augroup END
endif

" HTML
if executable('html-languageserver')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'html-languageserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
        \ 'whitelist': ['html'],
        \ })
endif

" CSS / LESS / SASS / SCSS
if executable('css-languageserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'css-languageserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
        \ 'whitelist': ['css', 'less', 'sass'],
        \ })
endif

" C/C++
if executable('clangd')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd', '-background-index']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

" Snippets
if has('python3')
  let g:UltiSnipsExpandTrigger="<c-e>"
  call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'allowlist': ['gitcommit', 'ruby'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif

augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
