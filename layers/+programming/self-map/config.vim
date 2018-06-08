" {terminal
if has('nvim')
  fu! OpenTerminal()
  " open split windows on the topleft
  belowright split
  " resize the height of terminal windows to 30
  :terminal
  startinsert
  endf
else
  fu! OpenTerminal()
  " open split windows on the topleft
  belowright split
  " resize the height of terminal windows to 30
  :call term_start('zsh', {'curwin' : 1, 'term_finish' : 'close'})
  endf
endif
nnoremap <leader>' :call OpenTerminal()<cr>

if spacevim_nvim
  autocmd! FileType fzf tnoremap  <Esc> <Esc>
  tnoremap <expr> <Esc> "<C-\><C-n><CR>"
  tnoremap <expr> <C-d> "<C-\><C-n>:bd!<cr>"
else
  tnoremap <expr> <Esc> "<C-\><C-n>"
endif

" }
"{create new tab 
nmap <leader>nb :edit $PWD/
nmap <leader>nB :edit 
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

" file and filename copy
" {
nmap <leader>cp :call system("xclip -i -selection clipboard", expand("%:t"))<CR>
nmap <leader>ap :call system("xclip -i -selection clipboard", expand("%:p"))<CR>
nmap <leader>rp :call system("xclip -i -selection clipboard", expand("%"))<CR>
nmap <leader>pc :call system("xclip -i -selection clipboard", expand("%:p:h"))<CR>
" }


"{unimpaired-like-map
nnoremap <silent> [<space> :pu! _<cr>:']+1<cr>
nnoremap <silent> ]<space> :pu _<cr>:'[-1<cr>
nnoremap <silent> ]p :pu<cr>
nnoremap <silent> [p :pu!<cr>
"}
"{ buffer and file 
function! DeleteFileAndCloseBuffer()
  call delete(expand('%')) | bdelete!
endfun
" noremap <silent> <leader>df :Delete<cr>
noremap <silent> <leader>df :call DeleteFileAndCloseBuffer()<cr>
noremap <silent> <leader>da ggdG
"}
"{
inoremap  <C-v> <esc>gUiwea
"}
"{change window quickly
nnoremap <localleader>ww <C-W>w
nnoremap <leader><Right> <C-w>l
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Up> <C-w>k
nnoremap <leader><Down> <C-w>j
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
nnoremap <silent> <leader>BD :bd!
"}
"{add title
autocmd BufNewFile * silent! call spacevim#vim#auto#AddTitle()
"}
"
"{unmap j,k
iunmap jj
iunmap jk
cunmap jj
cunmap jk
sunmap j
sunmap k
"}
"{
vunmap v
nunmap <Leader>u
nunmap <Leader>d
"}
"{copy whole buffer content
nnoremap <silent> <leader>cb :%y+<cr>
"}
"
"{
nnoremap <silent> <leader>pu :PlugUpdate!<cr>
nnoremap <silent> <leader>pr :PlugClean<cr>
"}
"{
imap <A-BS> <C-W>
"}
