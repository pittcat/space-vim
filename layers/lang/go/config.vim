command! Dlvgui exec "AsyncRun!".'gdlv '.'debug '.'%:p'
autocmd FileType go nnoremap <buffer> <leader>dg :Dlvgui<cr>
