let g:floaterm_position='right'
let g:floaterm_keymap_toggle=""
let g:floaterm_width=0.5
let g:floaterm_height=0.5
let g:floaterm_autoclose = 0
let g:floaterm_autoinsert = v:false
autocmd User Startified setlocal buflisted

hi Floaterm guibg=black
hi FloatermBorder guibg=orange guifg=cyan

nnoremap   <silent>   <f9>     :FloatermToggle!<CR>
vnoremap <silent>   <f9>     <Esc>:FloatermToggle!<CR>
tnoremap   <silent>   <f9>    <C-\><C-n> :FloatermToggle!<CR>
nnoremap   <silent>   <f10>     :FloatermKill<CR>
vnoremap <silent>   <f10>     <Esc>:FloatermKill<CR>
tnoremap   <silent>   <f10>    <C-\><C-n> :FloatermKill<CR>
nnoremap   <silent>   <A-3>     :FloatermToggle!<CR>
tnoremap   <silent>   <A-3>    <C-\><C-n> :FloatermToggle!<CR>
vnoremap   <silent>   <A-3>    <C-\><C-n> :FloatermToggle!<CR>
tnoremap <silent> <A-\> <C-\><C-n>



" new float terminal
nnoremap   <silent>   <localleader>fn     :FloatermNew<CR>
vnoremap <silent>   <localleader>fn    <Esc>:FloatermNew<CR>
tnoremap   <silent>   <localleader>fn    <C-\><C-n> :FloatermNew<CR>

" new horizontal terminal
command! -nargs=0 HFterm 
      \ FloatermNew --height=0.4 --width=0.4 --wintype=split --name=hterm --position=rightbelow --autoclose=2
nnoremap   <silent>   <localleader>fh     :HFterm<CR>
vnoremap <silent>   <localleader>fh    <Esc>:HFterm<CR>
tnoremap   <silent>   <localleader>fh    <C-\><C-n> :HFterm<CR>

" new vertical terminal
command! -nargs=0 VFterm 
      \ FloatermNew --height=0.4 --width=0.3 --wintype=vsplit --name=vterm --position=botright --autoclose=2
nnoremap   <silent>   <localleader>fv     :VFterm<CR>
vnoremap <silent>   <localleader>fv    <Esc>:VFterm<CR>
tnoremap   <silent>   <localleader>fv    <C-\><C-n> :VFterm<CR>

nnoremap   <silent>   <localleader>fc     :Floaterms<CR>
vnoremap <silent>   <localleader>fc    <Esc>:Floaterms<CR>
tnoremap   <silent>   <localleader>fc    <C-\><C-n> :Floaterms<CR>

nnoremap   <silent>   <localleader>fc     :Floaterms<CR>
vnoremap <silent>   <localleader>fc    <Esc>:Floaterms<CR>
tnoremap   <silent>   <localleader>fc    <C-\><C-n> :Floaterms<CR>

" vim-statify bugfix
autocmd User Startified setlocal buflisted
