scriptencoding utf-8


" nerdcommenter {
  let g:NERDSpaceDelims=1

  nmap <Leader>;; <Plug>NERDCommenterToggle
  omap <Leader>;; <Plug>NERDCommenterToggle
  vmap <Leader>;; <Plug>NERDCommenterToggle
" }

" { mg979/vim-visual-multi 
let g:VM_default_mappings = 0
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n
let g:VM_maps["Mouse Cursor"]                = '<M-LeftMouse>'
let g:VM_mouse_mappings = 0
" }


" {brooth/far.vim
  " nnoremap <silent> <localleader>fd :Fardo<cr>
  let g:far#enable_undo=1
" }
