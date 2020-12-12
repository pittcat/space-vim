" Reload .vimrc
nnoremap <Leader>fR :source $MYVIMRC<CR>


" Use Ctrl-Tab and Alt-Tab to switch tab
map    <C-Tab>  :tabnext<CR>
imap   <C-Tab>  <C-O>:tabnext<CR>
map    <M-Tab>  :tabprev<CR>
imap   <M-Tab>  <C-O>:tabprev<CR>

" <Leader><leader>[1-9] move to tab [1-9]
for s:i in range(1, 9)
  execute 'nnoremap <Leader><Leader>' . s:i . ' ' . s:i . 'gt'
endfor

" map y <Plug>(operator-flashy)
" nmap Y <Plug>(operator-flashy)$



" util
nnoremap <Leader>tc :call spacevim#util#ToggleCursorColumn()<CR>
nnoremap <Leader>tC :call spacevim#util#ToggleColorColumn()<CR>

command! -bar -nargs=0 Rtp :call spacevim#util#Runtimepath()

augroup spacevimGUI
  autocmd!
  autocmd GUIEnter * nnoremap <Leader>wm :call spacevim#vim#gui#ToggleFullScreen()<CR>
augroup END
