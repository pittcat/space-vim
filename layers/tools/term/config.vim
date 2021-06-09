let g:floaterm_position='right'
let g:floaterm_keymap_toggle=""
let g:floaterm_width=0.5
let g:floaterm_height=0.5
let g:floaterm_autoclose = 0
let g:floaterm_autoinsert = v:false
autocmd User Startified setlocal buflisted

hi Floaterm guibg=black
hi FloatermBorder guibg=orange guifg=cyan

nnoremap   <silent>   <F9>     :FloatermToggle!<CR>
vnoremap <silent>   <F9>     <Esc>:FloatermToggle!<CR>
tnoremap   <silent>   <F9>    <C-\><C-n> :FloatermToggle!<CR>
nnoremap   <silent>   <A-3>     :FloatermToggle!<CR>
tnoremap   <silent>   <A-3>    <C-\><C-n> :FloatermToggle!<CR>
vnoremap   <silent>   <A-3>    <C-\><C-n> :FloatermToggle!<CR>
tnoremap <silent> <A-\> <C-\><C-n>
