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
      \'coc-template','coc-pyright','coc-clangd','coc-sh','coc-json','coc-cmake',
      \'coc-vimlsp','coc-explorer','coc-emoji','coc-markmap']
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

command! -nargs=0 CoCAddTemplateTop :call CocAction('runCommand','template.templateTop')
command! -nargs=0 CocRnameCFile :execute 'CocCommand workspace.renameCurrentFile'
command! -nargs=0 CoCExplore :call CocAction('runCommand','explorer')

" Remap for rename current word
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)



" coc-explorer
nnoremap <silent> <F4> :CocCommand explorer<CR>


" vim-snippets
let g:snips_author = ''
let g:snips_email = ''


