"{KabbAmine/zealvim.vim
nmap <silent> <leader>sz <Plug>Zeavim
vmap <leader>sz <Plug>ZVVisSelection
let g:zv_disable_mapping = 1
let g:zv_file_types = {
            \   'css'                 : 'css',
            \   'javascript'          : 'javascript,nodejs',
            \   'python'              : 'python_3,scipy,numpy,matplotlib,pandas',
            \ }
"}

"{tyru/open-browser.vim
let g:vsm_default_mappings=0
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
"}
"{voldikss/vim-browser-search
nmap <leader>so <Plug>SearchNormal
vmap <leader>so <Plug>SearchVisual
" }

