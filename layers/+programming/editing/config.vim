scriptencoding utf-8

"{jiangmiao/auto-pairs
  let g:AutoPairsMapSpace=0
  let g:AutoPairsMapCR=0
"}

" nerdcommenter {
  let g:NERDSpaceDelims=1

  nmap <Leader>;; <Plug>NERDCommenterToggle
  omap <Leader>;; <Plug>NERDCommenterToggle
  vmap <Leader>;; <Plug>NERDCommenterToggle
" }

" vim-multiple-cursors {
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key='<C-d>'
let g:multi_cursor_select_all_word_key='<A-a>'
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-u>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" }

" { mg979/vim-visual-multi 
  " fun! VM_before_auto()
    " call MacroBefore()
  " endfun

  " fun! VM_after_auto()
    " call MacroAfter()
  " endfun

  " function! MacroBefore(...)
    " unmap s
    " unmap S
    " let b:deoplete_disable_auto_complete = 1
  " endfunction!

  " function! MacroAfter(...)
    " nmap s <plug>sneak_s
    " nmap S <Plug>Sneak_S
    " let b:deoplete_disable_auto_complete = 0
  " endfunction!
" }


" {brooth/far.vim
  " nnoremap <silent> <localleader>fd :Fardo<cr>
" }
" {unblevable/quick-scope
  nmap <localleader>qs <plug>(QuickScopeToggle)
  xmap <localleader>qs <plug>(QuickScopeToggle)
  let g:qs_highlight_on_keys = ['t', 'T','f','F']
  augroup qs_colors
    autocmd!
    autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
    autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
  augroup END

" }
" {Shougo/echodoc.vim
  set cmdheight=2
	let g:echodoc_enable_at_startup = 1
" }
