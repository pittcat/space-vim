let g:clap_theme = 'material_design_dark'
let g:clap_enable_icon=1
let g:clap_disable_run_rooter=v:true



let g:clap_provider_quick_open = {
      \ 'source': ['~/.zshrc', '~/.spacevim', '~/.tmux.conf'],
      \ 'sink': 'e',
      \ }


" clap mappings
nmap <Leader>? :Clap maps<CR>
nnoremap <Leader>bb :Clap buffers<CR>
nnoremap <Leader>ff :Clap files<CR>
nnoremap <Leader>fv :Clap filer<CR>
nnoremap <Leader>w? :Clap windows<CR>
nnoremap <silent> <leader>ct :Clap tags<cr>
nnoremap <Leader>rg :Clap grep<cr>
nnoremap <Leader>fl :Clap lines<cr>
nnoremap <Leader>cq :Clap quick_open<cr>

