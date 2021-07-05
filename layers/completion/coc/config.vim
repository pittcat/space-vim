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

let g:coc_global_extensions=['coc-snippets','coc-pairs','coc-yank','coc-word','coc-texlab',
      \'coc-pyright','coc-clangd','coc-sh','coc-json','coc-cmake','coc-tsserver','coc-css',
      \ 'coc-html','coc-lists','coc-explorer','coc-lua','coc-go','coc-floaterm',
      \'coc-vimlsp','coc-emoji','coc-markmap']
let g:coc_snippet_next = '<C-j>'
let g:coc_snippet_prev = '<C-k>'
imap <C-l> <Plug>(coc-snippets-expand)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

command! -nargs=0 CocRnameCFile :execute 'CocCommand workspace.renameCurrentFile'
command! -nargs=0 CoCExplore :call CocAction('runCommand','explorer')

" Remap for rename current word
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" coc-explorer
nnoremap <silent> <F10> :CoCExplore<CR>
" vim-snippets
let g:snips_author = ''
let g:snips_email = ''

" 
nnoremap <silent> <localleader>co :CocList outline<cr>
nnoremap <silent> <localleader>cp :CoCListGrep<cr>
command! -nargs=0 CoCListError execute 'CocList diagnostics'
command! -nargs=0 CoCListCurError execute 'CocList diagnostics --current-buf'
command! -nargs=0 CoCListGrep execute 'CocList grep'

" workspaceFolders workarround
autocmd FileType python let b:coc_root_patterns =  [".python-root",".git",".hg",".projections.json"]

" coc-snippets
command! -nargs=0 Fesnippets execute 'FZF ~/.vim/plugged/code-snippets'
nnoremap <silent> <localleader>cs :CocList snippets<cr>
nnoremap <silent> <localleader>cc :Fesnippets<cr>
