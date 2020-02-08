let g:clap_layout = { 'width': '70%', 'col': '15%','row': '30%'}
let g:clap_theme = 'material_design_dark'
let g:clap_enable_icon=1



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



function! s:ensure_closed() abort
  call clap#floating_win#close()
  silent! autocmd! ClapEnsureAllClosed
endfunction

function! MyClapOnEnter() abort
  augroup ClapEnsureAllClosed
    autocmd!
    autocmd BufEnter,WinEnter,WinLeave * call s:ensure_closed()
  augroup END
endfunction

autocmd User ClapOnEnter call MyClapOnEnter()
