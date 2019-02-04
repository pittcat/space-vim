"{create new tab 
function! AddNewFile()
  let l:filename = input('new file name(based on pwd):','')
  if(empty(l:filename)) | return | endif
  let l:path='$PWD'.'/'.l:filename
  silent execute '!touch' l:path
  execute 'edit' l:path
  silent! call spacevim#vim#auto#AddTitle()
endfunction
nmap <leader>nb :call AddNewFile()<cr>
function! AddNewFileBSB()
  " lcd %:p:h
  let l:filename = input('new file name(based on buffer info):','')
  if(empty(l:filename)) | return | endif
  let l:path=expand('%:p:h').'/'.l:filename
  silent execute '!touch' l:path
  execute 'edit' l:path
  silent! call spacevim#vim#auto#AddTitle()
endfunction
nmap <leader>nf :call AddNewFileBSB()<cr>
"}
" {open .spacevim
noremap <silent> <leader>fed :edit ~/.spacevim<cr>
" }
" {vim qf
autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
            \   q :cclose<cr>:lclose<cr>
autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
            \   bd|
            \   q | endif
  " }


"{unimpaired-like-map
nnoremap <silent> [<space> :pu! _<cr>:']+1<cr>
nnoremap <silent> ]<space> :pu _<cr>:'[-1<cr>
nnoremap <silent> ]p :pu<cr>
nnoremap <silent> [p :pu!<cr>
"}
"{ buffer and file 
function! DeleteFileAndCloseBuffer()
  if expand('%')!=''
    call delete(expand('%')) | bdelete!
  endif
endfun
noremap <silent> <leader>df :call DeleteFileAndCloseBuffer()<cr>
noremap <silent> <leader>da ggdG
"}
"{
inoremap  <C-v> <esc>gUiwea
"}
"{change window quickly
nnoremap <localleader>ww <C-W>w
"}

"{fold
set foldmethod=manual
"}

"{save all buffers
nnoremap <silent> <leader>fS :wa!<cr>
"}
"{
set mouse=a
"}
"{ generate title
nnoremap <silent> <leader>gT :call spacevim#vim#auto#AddTitle()<cr>
"}
"{
nnoremap <silent> <localleader>BD :bd!<cr>
"}
"
"{
imap <A-BS> <C-W>
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

"{switch buffers quickly
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"}
"
"{remap “\” as “,” for repeat search in opposite direction
nnoremap \ ,
"}
"{self command
command! Killallbuffer execute "bufdo bd"
"}
"{
command! Copybuffer execute "%y+"
"}
