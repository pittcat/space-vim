if g:spacevim.nvim
  let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
  let $NVIM_PYTHON_LOG_LEVEL="DEBUG"
  let g:python_host_skip_check=1
  let g:python_host_prog = '/usr/bin/python2'
  let g:python3_host_skip_check=1
  let g:python3_host_prog = '/usr/bin/python3'
endif

let g:ncm2#auto_popup=1
set completeopt=noselect,menuone,noinsert
autocmd InsertEnter * call ncm2#enable_for_buffer()
" au TextChangedI * call ncm2#auto_trigger()


function! SmartEnterMap()
  if ncm2_ultisnips#completed_is_snippet()
    return  ncm2_ultisnips#_do_expand_completed()
  else
    return "\<C-y>"
  endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=SmartEnterMap()<CR>" : "\<C-g>u\<CR>"

function! Multiple_cursors_before()
    call ncm2#lock('vim-multiple-cursors')
endfunction

function! Multiple_cursors_after()
    call ncm2#unlock('vim-multiple-cursors')
endfunction

" common
call ncm2#override_source('ultisnips', {'priority': 10})
" language
let g:ncm2_pyclang#library_path = '/usr/lib/libclang.so'
let g:ncm2_pyclang#args_file_path = ['.clang_complete']
let g:ncm2_pyclang#database_path = [
            \ 'compile_commands.json',
            \ 'build/compile_commands.json'
            \ ]
" lsp
call ncm2#override_source('LanguageClient_python', {'enable': 0})
call ncm2#override_source('LanguageClient_php', {'enable': 0})
" call ncm2#override_source('LanguageClient_cpp', {'enable': 0})
call ncm2#override_source('LanguageClient_javascript', {'enable': 0})
call ncm2#override_source('LanguageClient_typescript', {'enable': 0})
call ncm2#override_source('LanguageClient_javascript.jsx', {'enable': 0})

" typescript
let g:nvim_typescript#server_path='/usr/bin/tsserver'
let g:nvim_typescript#javascript_support=0
let g:nvim_typescript#diagnostics_enable=0
