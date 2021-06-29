scriptencoding utf-8

" asyncrun.vim {
  command! GdbGen execute spacevim#plug#asyncrun#Gdb()
  command! VsdebugGen execute spacevim#plug#asyncrun#Vsdebug()
  command! AsyCompile execute spacevim#plug#asyncrun#Compile()
  nnoremap <silent> <F8> :call spacevim#plug#asyncrun#CompileAndRun()<CR>
  nnoremap <leader>cp :AsyCompile<CR>
  nnoremap <silent> <localleader>dg :GdbGen<cr>
  nnoremap <silent> <localleader>dv :VsdebugGen<cr>

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
  let g:indentLine_char='¦'
  let g:indentLine_enabled=1
  let g:indentLine_color_term=239
  let g:indentLine_color_gui = '#4A9586'
  let g:indentLine_concealcursor='vc'      " default 'inc'
  let g:indentLine_fileTypeExclude = ['help', 'startify', 'vimfiler']
  let g:indentLine_setColors = 1
  let g:indentLine_char = '┆'
  noremap <silent> <Leader>ti :IndentLinesToggle<cr>
" }

" vim-rooter {
  " To stop vim-rooter echoing the project directory
  let g:rooter_silent_chdir = 1
  let g:rooter_change_directory_for_non_project_files = ''
  let g:rooter_manual_only = 1
" }
