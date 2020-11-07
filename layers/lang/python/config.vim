" pdb-web
autocmd FileType python nnoremap <buffer> <F1> :OpenBrowser http://localhost:5555/<cr>
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
nmap <silent> <leader>jr :RunQtConsole<Enter>
nmap <silent> <leader>jk :Iconect<cr>
nmap <silent> <leader>jc <Plug>(IPy-RunCell)
nmap <silent> <leader>ja <Plug>(IPy-RunAll)
map <silent> <leader>je <Plug>(IPy-Run)

