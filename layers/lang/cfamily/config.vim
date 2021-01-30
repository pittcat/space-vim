
function! CbinPath()
  call spacevim#plug#asyncrun#Gdb()
  call system('xclip -i -selection clipboard', expand('%:p:h').'/exec/'.expand('%:t:r'))
endfunction


command! CbinPath execute CbinPath()
autocmd FileType c,cpp nnoremap <buffer> <localleader>cp :CbinPath<cr>
