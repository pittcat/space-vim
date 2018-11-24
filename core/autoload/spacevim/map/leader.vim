let g:spacevim#map#leader#desc =  get(g:, 'spacevim#map#leader#desc', {})
let g:spacevim#map#leader#desc['name'] =  'space-vim root'

for s:i in range(1, 9)
  let g:spacevim#map#leader#desc[s:i] = 'window-'.s:i
endfor
unlet s:i

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

let g:spacevim#map#leader#desc['a'] = {
      \ 'name' : '+ag/',
      \ 'g' : ['PCAg','ag-project'],
      \ }

let g:spacevim#map#leader#desc['b'] = {
      \ 'name' : '+buffer',
      \ '1' : ['b1', 'buffer 1'],
      \ '2' : ['b2', 'buffer 2'],
      \ '3' : ['b3', 'buffer 3'],
      \ '4' : ['b4', 'buffer 4'],
      \ '5' : ['b5', 'buffer 5'],
      \ '6' : ['b6', 'buffer 6'],
      \ '7' : ['b7', 'buffer 7'],
      \ '8' : ['b8', 'buffer 8'],
      \ '9' : ['b9', 'buffer 9'],
      \ 'c' : ['%y+','copy-buffer'],
      \ 'd' : ['bd', 'delete-buffer'],
      \ 'f' : ['bfirst', 'first-buffer'],
      \ 'h' : ['Startify', 'home-buffer'],
      \ 'k' : ['bw', 'kill-buffer'],
      \ 'l' : ['blast', 'last-buffer'],
      \ 'n' : ['bnext', 'next-buffer'],
      \ 'p' : ['bprevious', 'previous-buffer'],
      \ }
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

let g:spacevim#map#leader#desc['f'] = {
      \ 'name' : '+fzf/fold',
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
      \ '?' : ['Files ~','Home Files'],
      \ 'f' : ['Files $PWD','PWD Files'],
      \ 'l' : ['Blines','BLines'],
      \ 'b' : ['Btags','Btags'],
      \ }

let g:spacevim#map#leader#desc['g'] = {
      \ 'name' : '+git/version-control',
      \ 'a' : ['call GitAdd()','Git Add'],
      \ 'b' : ['Gblame', 'fugitive-blame'],
      \ 'c' : ['Gcommit', 'fugitive-commit'],
      \ 'd' : ['Gdiff', 'fugitive-diff'],
      \ 'g' : ['SignifyToggle','Toggle Signify'],
      \ 'h' : ['SignifyToggleHighlight','Toggle Signify Height'],
      \ 'v' : ['Agit','Better View'],
      \ 'w' : ['Gwrite', 'fugitive-write'],
      \ 'r' : ['SignifyRefresh','Refresh Signify'],
      \ 's' : ['Gstatus', 'fugitive-status'],
      \ }
let g:spacevim#map#leader#desc['h'] = {
      \ 'name' : '+help',
      \ }
let g:spacevim#map#leader#desc['j'] = {
      \ 'name' : '+jump',
      \ 'j' : ['call feedkeys("\<Plug>(easymotion-overwin-f)")', 'easymotion-goto-char'],
      \ 'J' : ['call feedkeys("\<Plug>(easymotion-overwin-f2)")', 'easymotion-goto-char-2'],
      \ 'l' : ['call feedkeys("\<Plug>(easymotion-overwin-line)")', 'jump-linewise'],
      \ 'w' : ['call feedkeys("\<Plug>(easymotion-overwin-w)")', 'jump-to-word-bidirectional'],
      \ 'f' : ['call feedkeys("\<Plug>(easymotion-prefix)w")', 'jump-forward-wordwise'],
      \ 'b' : ['call feedkeys("\<Plug>(easymotion-prefix)b")', 'jump-backword-wordwise'],
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
      \ 'name' : '+toggle',
      \ 'g' : ['GitGutterToggle', 'gitgutter'],
      \ 'p' : ['setlocal paste!', 'paste-mode'],
      \ 't' : ['TagbarToggle', 'tagbar'],
      \ 'c' : ['call spacevim#util#ToggleCursorColumn()', 'cursor-column'],
      \ 'C' : ['call spacevim#util#ToggleColorColumn()', 'color-column'],
      \ }
" let g:spacevim#map#leader#desc['u'] = [ 'call feedkeys("\<C-u>")', 'scroll-up' ]



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
let g:spacevim#map#leader#desc['x'] = {
      \ 'name' : '+text',
      \ 'a' : ['call feedkeys("\<Plug>(EasyAlign)")', 'easy-align'],
      \ 'd' : ['StripWhitespace', 'delete-trailing-whitespace'],
      \ }


let g:spacevim#map#leader#desc['p'] = {
      \ 'name' : '+path/plugin',
      \ 'a' : ['call system("xclip -i -selection clipboard", expand("%:p"))','copy-full-path'],
      \ 'n' : ['call system("xclip -i -selection clipboard", expand("%t"))','copy-filename'],
      \ 'l' : ['call system("xclip -i -selection clipboard", expand("%"))','copy-relative-filename'],
      \ 'd' : ['call system("xclip -i -selection clipboard", expand("%:p:h"))','copy-dir-path'],
      \ 'r' : ['PlugClean','clean-plugin'],
      \ 'u' : ['PlugUpdate!','update-plugin'],
      \ }