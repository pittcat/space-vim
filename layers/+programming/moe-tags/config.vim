let g:gen_tags#use_cache_dir=1
let g:gen_tags#blacklist = split(glob('~/.vim/plugged/*'))

" gtags
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/share/gtags/gtags.conf'
let g:loaded_gentags#gtags=0
let g:gen_tags#gtags_auto_gen=1

let g:gen_tags#gtags_default_map=1  "maps



" ctags
" let g:loaded_gentags#ctags=0
" let g:gen_tags#ctags_auto_gen =1
" let g:gen_tags#ctags_opts =['--fields=+niazS', '--extra=+q']
" let g:gen_tags#ctags_opts += ['--c++-kinds=+px', '--c-kinds=+px']

" brookhong/cscope.vim
"
if has_key(g:plugs, 'cscope.vim')
  nnoremap <silent> <localleader>cg :!cscope -Rbq<cr>
  nnoremap <silent> <localleader>ct :cscope add cscope.out<cr>
  nnoremap <silent> <localleader>cr :!rm cscope.*<cr>
  nnoremap <silent> <localleader>cf :call CscopeFindInteractive(expand('<cword>'))<CR>
  nnoremap <silent> <localleader>cl :call ToggleLocationList()<CR>
cscope.vim

" skywind3000/vim-preview
function! PreViewInput()
  let l:tagname = input('tag name:','')
  execut 'PreviewTag' l:tagname
endfunction
nnoremap <localleader>cp :call PreViewInput()<cr>
nmap <leader>nf :call AddNewFile()<cr>
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> [ :PreviewClose<cr>
noremap <M-u> :PreviewScroll -1<cr>
noremap <M-d> :PreviewScroll +1<cr>
inoremap <M-u> <c-\><c-o>:PreviewScroll -1<cr>
inoremap <M-d> <c-\><c-o>:PreviewScroll +1<cr>
nnoremap <silent> <M-h> :PreviewSignature!<cr>
