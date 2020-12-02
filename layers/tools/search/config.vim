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
"}
"{voldikss/vim-browser-search
nmap <leader>so <Plug>SearchNormal
vmap <leader>so <Plug>SearchVisual
" }
" {
nnoremap <silent> <leader>sj :SkylightJumpTo<CR>
nnoremap <silent> <leader>sp :SkylightPreview<CR>
nnoremap <silent><expr> <A-f> skylight#float#has_scroll() ? skylight#float#scroll(1) : "\<A-f>"
nnoremap <silent><expr> <A-b> skylight#float#has_scroll() ? skylight#float#scroll(0) : "\<A-b>"
" }
