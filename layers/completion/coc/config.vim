set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=200
set shortmess+=c

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:coc_global_extensions=['coc-snippets','coc-pairs','coc-yank','coc-word',
      \'coc-template','coc-python','coc-clangd','coc-sh','coc-json','coc-cmake',
      \'coc-explorer','coc-emoji','coc-markmap']
let g:coc_snippet_next = '<C-j>'
let g:coc_snippet_prev = '<C-k>'

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd BufEnter * if (expand('%:t')=='' && &filetype ==# '')
      \ | nnoremap <silent> <buffer> q <C-w>c | endif


" Remap for rename current word
nmap <silent> <localleader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> <leader>rn :CocCommand workspace.renameCurrentFile<cr>


" coc-template
nnoremap <silent> <leader>at :CocCommand template.templateTop<CR>

" coc-explorer
nnoremap <silent> <F4> :CocCommand explorer<CR>
nnoremap <silent> <leader>ft :CocCommand explorer<CR>

" coc.nvim for diagnostic
if !spacevim#load('moe-ale')
  nmap <silent> <leader>ep <Plug>(coc-diagnostic-prev)
  nmap <silent> <leader>en <Plug>(coc-diagnostic-next)
  nmap <silent> <leader>el :CocList diagnostics<cr>
endif
