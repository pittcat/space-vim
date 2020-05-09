" vim-cpp-enhanced-highlight {
  let g:cpp_class_scope_highlight = 1
  let g:c_no_curly_error=1
" }
"
command! Nemvier exec "AsyncRun! -silent ".'nemiver '.'%:p:h/exec/%:t:r'
autocmd FileType c,cpp nnoremap <buffer> <localleader>dn :Nemvier<cr>
