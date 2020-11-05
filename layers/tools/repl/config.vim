luafile $HOME/.space-vim/layers/tools/repl/iron.lua

let g:iron_map_defaults = 0

nmap <C-c><C-l> <Plug>(iron-send-line)
vmap <C-c><C-l> <Plug>(iron-visual-send)
