scriptencoding utf-8

" Smarter cursorline {
augroup spacevimCursorline
  autocmd!
  autocmd InsertLeave,WinEnter * set cursorline relativenumber
  autocmd InsertEnter,WinLeave * set nocursorline norelativenumber
augroup END
" }

" From tpope
if g:spacevim.gui
  command! Bigger  :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+1', '')
  command! Smaller :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)-1', '')
  noremap + :Bigger<CR>
  noremap - :Smaller<CR>
endif

" vim-illuminate
" {
let g:Illuminate_highlightUnderCursor = 0
let g:Illuminate_delay = 400
hi link illuminatedWord Visual
" }

" vim-startify {
let g:startify_change_to_vcs_root = 0
let g:startify_change_to_dir = 0
let g:startify_session_persistence = 1
" }


" vim-choosewin {
let g:choosewin_overlay_enable = 1
" }

execute 'source' fnamemodify(expand('<sfile>'), ':h') . '/keybindings.vim'