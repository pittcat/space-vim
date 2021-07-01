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

let g:vista_enable_markdown_extension = 0
let g:vista_update_on_text_changed = 1
let g:vista_update_on_text_changed_delay = 2000
let g:vista_close_on_fzf_select = 0

let g:vista_sidebar_position = 'vertical topleft'
let g:vista_sidebar_width = 40
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

let g:vista_default_executive = 'coc'
let g:vista_executive_for = {
    \ 'markdown': 'toc',
    \ }

let g:vista#renderer#enable_icon = 1

let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
