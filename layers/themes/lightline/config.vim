" lightline.vim {
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction
set showtabline=2

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = ''

let g:lightline                  = {}
let g:lightline.colorscheme='selenized_dark'
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
let g:lightline.component_function = {'cocstatus': 'coc#status','currentfunction': 'CocCurrentFunction'}
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
"
"}