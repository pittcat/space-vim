scriptencoding utf-8

augroup spacevimNewFile
  autocmd!
  " Add title automatically when new files and move cursor to the end of file
  autocmd BufNewFile *.py,*.cpp,*.c,*.sh,*.java,*.pl call spacevim#vim#auto#AddTitle()
augroup END

" vim-move {
  " vim-move config
  " for terms that send Alt as Escape sequence
  " see http://vim.wikia.com/wiki/Mapping_fast_keycodes_in_terminal_Vim
  " for why the <F20> hack. Keeps Esc from waiting for other keys to exit visual
  set <F20>=j
  set <F21>=k
  vmap <F20> <Plug>MoveBlockDown
  vmap <F21> <Plug>MoveBlockUp
  nmap <F20> <Plug>MoveLineDown
  nmap <F21> <Plug>MoveLineUp
  if g:spacevim_nvim
    vmap <M-j> <Plug>MoveBlockDown
    vmap <M-k> <Plug>MoveBlockUp
    nmap <M-j> <Plug>MoveLineDown
    nmap <M-k> <Plug>MoveLineUp
  endif
  vmap <C-Down> <Plug>MoveBlockDown
  vmap <C-Up> <Plug>MoveBlockUp
" }

" rainbow {
  let g:rainbow_active = 1
  let g:rainbow_conf = g:spacevim#plug#rainbow#conf
" }

" rainbow_parentheses.vim {
  augroup rainbowLisp
    autocmd!
    autocmd FileType lisp,clojure,scheme RainbowParentheses
  augroup END
" }

" tagbar {
  let g:tagbar_autofocus = 1
  nnoremap <F6> :TagbarToggle<CR>
  inoremap <F6> <ESC>:TagbarToggle<CR>
  nnoremap <Leader>tt :TagbarToggle<CR>
  let g:tagbar_sort = 0

  if executable('ripper-tags')
    let g:tagbar_type_ruby = {
        \ 'kinds'      : ['m:modules',
                        \ 'c:classes',
                        \ 'C:constants',
                        \ 'F:singleton methods',
                        \ 'f:methods',
                        \ 'a:aliases'],
        \ 'kind2scope' : { 'c' : 'class',
                         \ 'm' : 'class' },
        \ 'scope2kind' : { 'class' : 'c' },
        \ 'ctagsbin'   : 'ripper-tags',
        \ 'ctagsargs'  : ['-f', '-']
        \ }
  endif
  let g:tagbar_type_css = {
  \ 'ctagstype' : 'Css',
      \ 'kinds'     : [
          \ 'c:classes',
          \ 's:selectors',
          \ 'i:identities'
      \ ]
  \ }
  let g:tagbar_type_typescript = {
    \ 'ctagstype': 'typescript',
    \ 'kinds': [
      \ 'c:classes',
      \ 'n:modules',
      \ 'f:functions',
      \ 'v:variables',
      \ 'v:varlambdas',
      \ 'm:members',
      \ 'i:interfaces',
      \ 'e:enums',
    \ ]
  \ }


" }

" asyncrun.vim {
  nnoremap <F5> :call spacevim#plug#asyncrun#CompileAndRun()<CR>
  augroup spacevimAsyncRun
    autocmd!
    autocmd User AsyncRunStart call spacevim#vim#auto#AsyncRunStart()
  augroup END
" }

" indentLine {
  let g:indentLine_char='¦'
  let g:indentLine_enabled=1
  let g:indentLine_color_term=239
  let g:indentLine_color_gui = '#4A9586'
  let g:indentLine_concealcursor='vc'      " default 'inc'
  let g:indentLine_fileTypeExclude = ['help', 'startify', 'vimfiler']
  let g:indentLine_setColors = 1
  let g:indentLine_char = '┆'
  noremap <silent> <Leader>ti :IndentLinesToggle<cr>
" }


" vim-polyglot {
  " Reset errorformat to its default value for cooperating with asyncrun.vim
  autocmd BufEnter * set errorformat&
" }

" vim-rooter {
  " To stop vim-rooter echoing the project directory
  let g:rooter_silent_chdir = 1
  let g:rooter_change_directory_for_non_project_files = 'current'
" }
