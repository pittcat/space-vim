scriptencoding utf-8

augroup spacevimNewFile
  autocmd!
  " Add title automatically when new files and move cursor to the end of file
  autocmd BufNewFile * silent! call spacevim#vim#auto#AddTitle()
augroup END

" rainbow {
  let g:rainbow_active = 1
  let g:rainbow_conf = g:spacevim#plug#rainbow#conf
" }

" rainbow_parentheses.vim {
  augroup rainbowLisp
    autocmd!
    autocmd FileType lisp,clojure,scheme RainbowParentheses
  augroup END
" }

" asyncrun.vim {
  nnoremap <F9> :AsyncStop<cr>
  noremap <F8> :call asyncrun#quickfix_toggle(14)<cr>
  nnoremap <F5> :call spacevim#plug#asyncrun#CompileAndRun()<CR>
  augroup spacevimAsyncRun
    autocmd!
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(14, 1)
  augroup END

  function! s:CorrectCloseBuffer()
    let qf_exist_num=filter(range(1, winnr('$')), 'getwinvar(v:val, "&ft") == "qf"')
    if len(qf_exist_num)
      execute "cclose" 
      execute "bd"
    elseif matchstr(expand('%:t'), '"') =='"'
      execute "bd!"
    elseif matchstr(expand('%:t'), 'bash')=="bash"
      execute "bd!"
    else
      execute "bd"
    endif
  endfunction
  command! CorrectCloseBuffer call s:CorrectCloseBuffer()
  nnoremap <silent> <leader>bd :CorrectCloseBuffer<cr>
" }

" indentLine {
  noremap <silent> <Leader>ti :IndentLinesToggle<cr>
" }


" vim-polyglot {
  " Reset errorformat to its default value for cooperating with asyncrun.vim
  autocmd BufEnter * set errorformat&
" }

" vim-rooter {
  " To stop vim-rooter echoing the project directory
  let g:rooter_silent_chdir = 1
  let g:rooter_change_directory_for_non_project_files = ''
" }
