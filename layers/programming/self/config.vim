"use wild menu
set wildmode=longest,full
"{create new tab 
function! AddNewFile()
  let l:filename = input('new file name(based on pwd):','')
  if(empty(l:filename)) | return | endif
  let l:path='$PWD'.'/'.l:filename
  silent execute '!touch' l:path
  execute 'edit' l:path
endfunction
command!  AddNewFile call AddNewFile()
nnoremap <leader>ne :AddNewFile<cr>
function! AddNewFileBSB()
  " lcd %:p:h
  let l:filename = input('new file name(based on buffer info):','')
  if(empty(l:filename)) | return | endif
  let l:path=expand('%:p:h').'/'.l:filename
  silent execute '!touch' l:path
  execute 'edit' l:path
endfunction
command!  AddNewFile call AddNewFile()
nnoremap <leader>nf :AddNewFileBSB<cr>
"}
" {open .spacevim
noremap <silent> <leader>fed :edit ~/.spacevim<cr>
" }
" {vim qf
autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
            \   q :cclose<cr>:lclose<cr>
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
command DFileCBuffer call DeleteFileAndCloseBuffer()
noremap <silent> <leader>df :DFileCBuffer<cr>
noremap <silent> <leader>da ggdG
"}
"{
inoremap  <C-v> <esc>gUiwea
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
"{
func! DeleteCurBufferNotCloseWindow() abort
    if &modified
        echohl ErrorMsg
        echom "E89: no write since last change"
        echohl None
    elseif winnr('$') == 1
        bd
    else  " multiple window
        let oldbuf = bufnr('%')
        let oldwin = winnr()
        while 1   " all windows that display oldbuf will remain open
            if buflisted(bufnr('#'))
                b#
            else
                bn
                let curbuf = bufnr('%')
                if curbuf == oldbuf
                    enew    " oldbuf is the only buffer, create one
                endif
            endif
            let win = bufwinnr(oldbuf)
            if win == -1
                break
            else        " there are other window that display oldbuf
                exec win 'wincmd w'
            endif
        endwhile
        " delete oldbuf and restore window to oldwin
        exec oldbuf 'bd'
        exec oldwin 'wincmd w'
    endif
endfunc

command! DCurBufferNCWindow  call DeleteCurBufferNotCloseWindow()
nnoremap <silent> <localleader>jd :DCurBufferNCWindow<cr>
nnoremap <silent> <localleader>jD :bd!<cr>
"}
"

"{toogle paste
set pastetoggle=<F3>
"}


"{remap “\” as “,” for repeat search in opposite direction
nnoremap \ ,
"}
"{self command
command! Killallbuffer execute "bufdo bd"
command! Copybuffer execute "%y+"
"}
"
"{
autocmd InsertLeave,FocusLost * silent! wa
autocmd TextChanged * silent! update
"}
"
"debug map <F1>
"{
"gdb
command! Gdbgui exec "AsyncRun!".'gdbgui '.'%:p:h/exec/%:t:r'
autocmd FileType c,cpp nnoremap <buffer> <F1> :Gdbgui<cr>


