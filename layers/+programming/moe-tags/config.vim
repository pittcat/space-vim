let g:loaded_gentags#ctags=0
let g:loaded_gentags#gtags=1
let g:gen_tags#ctags_opts =['--fields=+niazS', '--extra=+q']
let g:gen_tags#ctags_opts += ['--c++-kinds=+px', '--c-kinds=+px']
let g:gen_tags#ctags_auto_gen =1

let g:gen_tags#use_cache_dir=1

let g:gen_tags#blacklist = split(glob('~/.vim/plugged/*'))

" maps
let g:gen_tags#gtags_default_map 
