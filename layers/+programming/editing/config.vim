scriptencoding utf-8

" nerdcommenter {
  let g:NERDSpaceDelims=1

  nmap <Leader>;; <Plug>NERDCommenterToggle
  omap <Leader>;; <Plug>NERDCommenterToggle
  vmap <Leader>;; <Plug>NERDCommenterToggle
" }

" vim-multiple-cursors {
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_start_word_key='<C-n>'
" let g:multi_cursor_select_all_word_key='<A-a>'
" let g:multi_cursor_next_key='<C-n>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'
" }

" { mg979/vim-visual-multi 
  fun! VM_before_auto()
    call MacroBefore()
  endfun

  fun! VM_after_auto()
    call MacroAfter()
  endfun

  function! MacroBefore(...)
    unmap f
    unmap F
    let b:deoplete_disable_auto_complete = 1
  endfunction!

  function! MacroAfter(...)
    map f <plug>sneak_s
    map F <Plug>Sneak_S
    let b:deoplete_disable_auto_complete = 0
  endfunction!
" }


" {brooth/far.vim
  nnoremap <silent> <localleader>fd :Fardo<cr>
" }
