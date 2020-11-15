" vim-choosewin {
let g:choosewin_overlay_enable = 1
nmap <Leader>cw <Plug>(choosewin)
" }
"
"{change window quickly
nnoremap <localleader>ww <C-W>w
"}
"{
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>wf :ZoomToggle<CR>
"}
