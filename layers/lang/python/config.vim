" {
let g:python_highlight_builtins = 1
let g:python_highlight_class_vars = 1
" }
" pdb-web
autocmd FileType python nnoremap <buffer> <leader>dp :OpenBrowser http://localhost:5555/<cr>
autocmd FileType python vnoremap <buffer> <leader>op <nop>
"}

" bfredl/nvim-ipy
let g:nvim_ipy_perform_mappings = 0
let g:ipy_celldef = '^##'
command! -nargs=0 RunQtConsole 
      \call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True")
command! -nargs=0 Iconect
      \call execute("IPython --existing --no-window")
let g:ipy_celldef = '^##' " regex for cell start and end
autocmd FileType python nmap <buffer> <silent> <leader>jr :RunQtConsole<cr>
autocmd FileType python nmap <buffer> <silent> <leader>jk :Iconect<cr>
autocmd FileType python nmap <buffer> <silent> <leader>jc <Plug>(IPy-RunCell)
autocmd FileType python nmap <buffer> <silent> <leader>ja <Plug>(IPy-RunAll)
autocmd FileType python map <buffer> <silent> <leader>je <Plug>(IPy-Run)
