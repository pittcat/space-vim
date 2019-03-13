scriptencoding utf-8

" cohama/lexima.vim{
call lexima#add_rule({'char': '**', 'input_after': '**', 'filetype': 'markdown'})
" }

" nerdcommenter {
  let g:NERDSpaceDelims=1

  nmap <Leader>;; <Plug>NERDCommenterToggle
  omap <Leader>;; <Plug>NERDCommenterToggle
  vmap <Leader>;; <Plug>NERDCommenterToggle
" }

" vim-multiple-cursors {
let g:VM_default_mappings = 0
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n
let g:VM_mouse_mappings = 1
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
