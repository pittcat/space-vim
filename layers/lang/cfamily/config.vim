
function! GdbGui()
  call spacevim#plug#asyncrun#Gdb()
  call system('xclip -i -selection clipboard', expand('%:p:h').'/exec/'.expand('%:t:r'))
endfunction


command! CopyCompile execute GdbGui()
autocmd FileType c,cpp nnoremap <buffer> <localleader>cp :CopyCompile<cr>
