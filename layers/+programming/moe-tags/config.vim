let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

let g:gutentags_ctags_tagfile = 'tags'

let s:vim_tags = expand('~/.cache/tags')
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_define_advanced_commands = 1
let g:gutentags_auto_add_cscope=0
let g:gutentags_auto_add_gtags_cscope = 0

let g:gutentags_modules = []
if executable('ctags')
  let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif
" ctags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" gtags
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'

"cscope
" if has_key(g:plugs, 'cscope.vim')
  " nnoremap <silent> <localleader>cg :!cscope -Rbq<cr>
  " nnoremap <silent> <localleader>ct :cscope add cscope.out<cr>
  " nnoremap <silent> <localleader>cr :!rm cscope.*<cr>
  " nnoremap <silent> <localleader>cf :call CscopeFindInteractive(expand('<cword>'))<CR>
  " nnoremap <silent> <localleader>cl :call ToggleLocationList()<CR>
" endif

" skywind3000/vim-preview
function! s:CleanEmptyBuffers()
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val)<0 && !getbufvar(v:val, "&mod")')
    if !empty(buffers)
        exe 'bd ' . join(buffers, ' ')
    endif
endfunction
auto BufWinEnter * call s:CleanEmptyBuffers()

function! PreViewInput()
  let l:tagname = input('tag name:','')
  execut 'PreviewTag' l:tagname
endfunction
nnoremap <localleader>cp :call PreViewInput()<cr>
autocmd FileType qf nnoremap <silent><buffer> ] :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> [ :PreviewClose<cr>
noremap <M-u> :PreviewScroll -1<cr>
noremap <M-d> :PreviewScroll +1<cr>
inoremap <M-u> <c-\><c-o>:PreviewScroll -1<cr>
inoremap <M-d> <c-\><c-o>:PreviewScroll +1<cr>
nnoremap <silent> <M-h> :PreviewSignature!<cr>

" skywind3000/gutentags_plus
let g:gutentags_plus_nomap = 1
let g:gutentags_define_advanced_commands = 1
noremap <silent> <localleader>gs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <localleader>gg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <localleader>gc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <localleader>gt :GscopeFind t <C-R><C-W><cr>
noremap <silent> <localleader>ge :GscopeFind e <C-R><C-W><cr>
noremap <silent> <localleader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <localleader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <localleader>gd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <localleader>ga :GscopeFind a <C-R><C-W><cr>
