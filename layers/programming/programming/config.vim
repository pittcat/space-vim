scriptencoding utf-8

" asyncrun.vim {
  command! GdbGen execute spacevim#plug#asyncrun#Gdb()
  command! AsyCompile execute spacevim#plug#asyncrun#Compile()
  nnoremap <silent> <F8> :call spacevim#plug#asyncrun#CompileAndRun()<CR>
  nnoremap <leader>cp :AsyCompile<CR>
  nnoremap <silent> <localleader>dg :GdbGen<cr>

  function! s:CorrectCloseBuffer()
    let qf_exist_num=filter(range(1, winnr('$')), 'getwinvar(v:val, "&ft") == "qf"')
    if len(qf_exist_num)
      execute "cclose" 
      execute "bd"
    elseif len(split(@%,'/'))>2 && split(@%,'/')[-2]=='bin'
      exec "bd!"
    elseif &filetype==''
      exec "bd!"
    else
      execute "bd"
    endif
  endfunction
  command! CorrectCloseBuffer call s:CorrectCloseBuffer()
" }

" indentLine {
  let g:indent_blankline_filetype_exclude = ['help', 'startify', 'vimfiler']
" }

" vim-rooter {
  " To stop vim-rooter echoing the project directory
  let g:rooter_silent_chdir = 1
  let g:rooter_change_directory_for_non_project_files = ''
  let g:rooter_manual_only = 1
" }
"{embear/vim-localvimrc
  let g:localvimrc_ask = 0
  let g:localvimrc_sandbox = 0
"}
"{wakatime
  augroup load_wakatime
      autocmd!
      autocmd InsertEnter * call plug#load('vim-wakatime') | autocmd! load_wakatime
  augroup END
"}
