
nmap <leader>lr <Plug>(Luadev-RunLine)
vmap <leader>lr <Plug>(Luadev-Run)

command! -nargs=0 RunLuaFile luafile %
nmap <leader>la :RunLuaFile<cr>
