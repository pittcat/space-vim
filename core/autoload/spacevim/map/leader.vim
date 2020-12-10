let g:spacevim#map#leader#desc =  get(g:, 'spacevim#map#leader#desc', {})
let g:spacevim#map#leader#desc['name'] =  'space-vim root'



let g:spacevim#map#leader#desc['?'] = [ 'Maps', 'show-keybindings' ]
let g:spacevim#map#leader#desc[';'] = [ '<Plug>NERDCommenterToggle','commenter' ]
let g:spacevim#map#leader#desc[' '] = {
      \ 'name': '+tab' ,
      \ '1' : 'tab-1'  ,
      \ '2' : 'tab-2'  ,
      \ '3' : 'tab-3'  ,
      \ '4' : 'tab-4'  ,
      \ '5' : 'tab-5'  ,
      \ '6' : 'tab-6'  ,
      \ '7' : 'tab-7'  ,
      \ '8' : 'tab-8'  ,
      \ '9' : 'tab-9'  ,
      \ }

" self layer
let g:spacevim#map#leader#desc['d'] = {
      \ 'name' : '+delete/translate',
      \ }

let g:spacevim#map#leader#desc['n'] = {
      \ 'name' : '+newfile',
      \ }


" plug/asyncrun.vim editing layer
let g:spacevim#map#leader#desc['c'] = {
      \ 'name' : '+compile/commenter',
      \ }

" tools-better layer
let g:spacevim#map#leader#desc['y'] = {
      \ 'name' : '+translate',
      \ }

" vista layer
let g:spacevim#map#leader#desc['v'] = {
      \ 'name' : '+vista',
      \ }


" better-motion layer
let g:spacevim#map#leader#desc['a'] = {
      \ 'name' : '+aeromotion/textalign',
      \ 's' : ['<Plug>(AerojumpSpace)','AerojumpSpace'],
      \ 'j' : ['<Plug>(AerojumpBolt)','AerojumpBolt'],
      \ 'a' : ['<Plug>(AerojumpFromCursorBolt)','AerojumpFromCursorBolt'],
      \ 'd' : ['<Plug>(AerojumpDefault)','AerojumpDefault'],
      \ 't' : ['call feedkeys("\<Plug>(EasyAlign)")', 'easy-align'],
      \ }


" vem 
let g:spacevim#map#leader#desc['k'] = {
      \ 'name' : '+buffer',
      \ 'c' : ['Copybuffer','copy-buffer'],
      \ 'd' : ['call feedkeys("\<Plug>vem_delete_buffer-")', 'delete-buffer'],
      \ 'f' : ['bfirst', 'first-buffer'],
      \ 'h' : ['Startify', 'home-buffer'],
      \ 'k' : ['bw', 'kill-buffer'],
      \ 'l' : ['blast', 'last-buffer'],
      \ 'n' : ['bnext', 'next-buffer'],
      \ 'p' : ['bprevious', 'previous-buffer'],
      \ 'K' : ['Killallbuffer', 'kill-all-buffer'],
      \ }

if spacevim#load('moe-ale')
  let g:spacevim#map#leader#desc['e'] = {
        \ 'name' : '+errors',
        \ 't' : ['ALEToggle','Toggle']    ,
        \ 'c' :['lclose','close view']    ,
        \ 'd' :['ALEDetail','detail']   ,
        \ 'l' :['lopen','show errors'],
        \ 'n' : ['call feedkeys("\<Plug>(ale_next)")', 'next-error']    ,
        \ 'p' : ['call feedkeys("\<Plug>(ale_previous)")', 'previous-error']    ,
        \ 'f' : ['ALEFix ','format code']   ,
        \ }
else
  let g:spacevim#map#leader#desc['e'] = {
        \ 'name' : '+errors',
        \ 'l' :['CocDiagnostics','show errors'],
        \ 'n' : ['<Plug>(coc-diagnostic-next)', 'next-error']    ,
        \ 'p' : ['<Plug>(coc-diagnostic-prev)', 'previous-error']    ,
        \ }
endif

let g:spacevim#map#leader#desc['f'] = {
      \ 'name' : '+fold/fzf/save',
      \ '0' : ['set foldlevel=0', '0-fold-level'],
      \ '1' : ['set foldlevel=1', '1-fold-level'],
      \ '2' : ['set foldlevel=2', '2-fold-level'],
      \ '3' : ['set foldlevel=3', '3-fold-level'],
      \ '4' : ['set foldlevel=4', '4-fold-level'],
      \ '5' : ['set foldlevel=5', '5-fold-level'],
      \ '6' : ['set foldlevel=6', '6-fold-level'],
      \ '7' : ['set foldlevel=7', '7-fold-level'],
      \ '8' : ['set foldlevel=8', '8-fold-level'],
      \ '9' : ['set foldlevel=9', '9-fold-level'],
      \ 's' : ['save', 'save-file'],
      \ 'R' : ['source $MYVIMRC', 'reload-vimrc'],
      \ }


" plug/asyncrun.vim git layer
let g:spacevim#map#leader#desc['g'] = {
      \ 'name' : '+git/version-control',
      \ 'a' : ['GitAdd()','Git Add'],
      \ 'b' : ['Gblame', 'fugitive-blame'],
      \ 'c' : ['Gcommit', 'fugitive-commit'],
      \ 'd' : ['Gdiff', 'fugitive-diff'],
      \ 'g' : ['SignifyToggle','Toggle Signify'],
      \ 'h' : ['SignifyToggleHighlight','Toggle Signify Height'],
      \ 'w' : ['Gwrite', 'fugitive-write'],
      \ 'r' : ['SignifyRefresh','Refresh Signify'],
      \ 's' : ['Gstatus', 'fugitive-status'],
      \ }
let g:spacevim#map#leader#desc['j'] = {
      \ 'name' : '+jupyter/tableize/minimap'                   ,
      \ }
let g:spacevim#map#leader#desc['p'] = {
      \ 'name' : '+projects',
      \ 's' : ['Rag', 'search-in-project'],
      \ }

let g:spacevim#map#leader#desc['q'] = [ 'q', 'quit' ]

let g:spacevim#map#leader#desc['Q'] = [ 'qa!', 'quit-without-saving' ]
let g:spacevim#map#leader#desc['s'] = {
      \ 'name' : '+search',
      \ 'c' : ['nohlsearch', 'search-clear-highlight']
      \ }
let g:spacevim#map#leader#desc['t'] = {
      \ 'name' : '+column/indentLine',
      \ 'c' : ['spacevim#util#ToggleCursorColumn()', 'cursor-column'],
      \ 'C' : ['spacevim#util#ToggleColorColumn()', 'color-column'],
      \ }


" window map
nnoremap <Plug>(window_w) <C-W>w
nnoremap <Plug>(window_r) <C-W>r
nnoremap <Plug>(window_d) <C-W>c
nnoremap <Plug>(window_q) <C-W>q
nnoremap <Plug>(window_j) <C-W>j
nnoremap <Plug>(window_k) <C-W>k
nnoremap <Plug>(window_h) <C-W>h
nnoremap <Plug>(window_l) <C-W>l
nnoremap <Plug>(window_H) <C-W>5<
nnoremap <Plug>(window_L) <C-W>5>
nnoremap <Plug>(window_J) :resize +5<CR>
nnoremap <Plug>(window_K) :resize -5<CR>
nnoremap <Plug>(window_b) <C-W>=
nnoremap <Plug>(window_s1) <C-W>s
nnoremap <Plug>(window_s2) <C-W>s
nnoremap <Plug>(window_v1) <C-W>v
nnoremap <Plug>(window_v2) <C-W>v
nnoremap <Plug>(window_2) <C-W>v

let g:spacevim#map#leader#desc['w'] = {
      \ 'name' : '+windows',
      \ 'w' : ['call feedkeys("\<Plug>(window_w)")', 'other-window'],
      \ 'd' : ['call feedkeys("\<Plug>(window_d)")', 'delete-window'],
      \ '-' : ['call feedkeys("\<Plug>(window_s1)")', 'split-window-below'],
      \ '|' : ['call feedkeys("\<Plug>(window_v1)")', 'split-window-right'],
      \ '2' : ['call feedkeys("\<Plug>(window_v1)")', 'layout-double-columns'],
      \ 'h' : ['call feedkeys("\<Plug>(window_h)")', 'window-left'],
      \ 'j' : ['call feedkeys("\<Plug>(window_j)")', 'window-below'],
      \ 'l' : ['call feedkeys("\<Plug>(window_l)")', 'window-right'],
      \ 'k' : ['call feedkeys("\<Plug>(window_k)")', 'window-up'],
      \ 'H' : ['call feedkeys("\<Plug>(window_H)")', 'expand-window-left'],
      \ 'J' : ['call feedkeys("\<Plug>(window_J)")', 'expand-window-below'],
      \ 'L' : ['call feedkeys("\<Plug>(window_L)")', 'expand-window-right'],
      \ 'K' : ['call feedkeys("\<Plug>(window_K)")', 'expand-window-up'],
      \ '=' : ['call feedkeys("\<Plug>(window_b)")', 'balance-window'],
      \ 's' : ['call feedkeys("\<Plug>(window_s1)")', 'split-window-below'],
      \ 'v' : ['call feedkeys("\<Plug>(window_v1)")', 'split-window-below'],
      \ }



let g:spacevim#map#leader#desc['p'] = {
      \ 'name' : '+copy/plugin',
      \ 'a' : ['system("xclip -i -selection clipboard", expand("%:p"))','copy-full-path'],
      \ 'b' : ['%y+','copy-full-buffer'],
      \ 'n' : ['system("xclip -i -selection clipboard", expand("%:t"))','copy-filename'],
      \ 'l' : ['system("xclip -i -selection clipboard", expand("%"))','copy-relative-filename'],
      \ 'd' : ['system("xclip -i -selection clipboard", expand("%:p:h"))','copy-dir-path'],
      \ 'g' : ["system('xclip -i -selection clipboard', expand('%:p:h').'/exec/'.expand('%:t:r'))",'copy-gcc-out'],
      \ 'r' : ['PlugClean','clean-plugin'],
      \ 'u' : ['PlugUpdate','update-plugin'],
      \ }


