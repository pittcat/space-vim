nnoremap <Leader>vs :Vista!!<CR>
if spacevim#load('clap')
  nnoremap <Leader>vf :Clap tags<CR>
elseif spacevim#load('fzf')
  nnoremap <Leader>vf :Vista finder coc<CR>
endif

function! VistaNS()
  echo "Disable vista for markdown"
endfunction
command!  VistaNS call VistaNS()
autocmd FileType markdown nnoremap <buffer> <leader>vf :VistaNS<CR>
autocmd FileType markdown nnoremap <buffer> <leader>vs :VistaNS<CR>

let g:vista_enable_markdown_extension = 0
let g:vista_sidebar_position = 'vertical topleft'
let g:vista_sidebar_width = 40
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

let g:vista_default_executive = 'ctags'

let g:vista_executive_for = {
  \ 'cpp': 'coc',
  \ 'c': 'coc',
  \ 'go': 'coc',
  \ 'python': 'coc',
  \ }

let g:vista#renderer#enable_icon = 1

let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }



function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
