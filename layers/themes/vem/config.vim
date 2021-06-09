" Use Tab to switch buffer
nmap <S-Tab> <Plug>vem_prev_buffer-
nmap <Tab> <Plug>vem_next_buffer-
nnoremap <leader>kd :bd<cr>
let g:vem_tabline_multiwindow_mode = 1

command! -nargs=0 VemCbuffer call feedkeys("\<Plug>vem_delete_buffer-")
luafile ~/.space-vim/layers/themes/vem/aeroline.lua
