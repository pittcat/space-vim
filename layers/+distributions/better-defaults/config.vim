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
let g:Illuminate_ftHighlightGroups = {
      \ 'vim:blacklist': ['vimVar', 'vimString', 'vimLineComment',
      \         'vimFuncName', 'vimFunction', 'vimUserFunc', 'vimFunc']
      \ }
hi illuminatedWord cterm=underline gui=underline
" }

" vim-startify {
let g:startify_custom_header = g:spacevim#plug#startify#header
let g:startify_list_order = g:spacevim#plug#startify#list_order
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
noremap <silent> <leader>sv :SSave<cr>
noremap <silent> <leader>sr :SLoad<cr>
" }

" vim-interestingwords
" {
nnoremap <silent> <leader>kk :call InterestingWords('n')<cr>
nnoremap <silent> <leader>KK :call UncolorAllWords()<cr>
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
" }

" vim-choosewin {
let g:choosewin_overlay_enable = 1
" }

execute 'source' fnamemodify(expand('<sfile>'), ':h') . '/keybindings.vim'
