  "tpope/vim-eunuch
  "{rename and mkdir 
    noremap <leader>rn :Rename 
    noremap <leader>cd :Mkdir 
  "}
  "{ 
  " 'terryma/vim-expand-region'
  vmap v <Plug>(expand_region_expand)
  vmap V <Plug>(expand_region_shrink)
  "
  "}
  "{BufOnly 
  nnoremap <leader>bD :BufOnly<cr>
  "}
  "{briandoll/change-inside-surroundings.vim
  noremap <silent> <localleader>ci :ChangeInsideSurrounding<cr>
  noremap <silent> <localleader>cas :ChangeAroundSurrounding<cr>
  "}
  "{tpoppe/vim-repeat
  " https://stackoverflow.com/questions/355907/how-do-i-repeat-an-edit-on-multiple-lines-in-vim
  " allow the . to execute once for each line of a visual selection
  vnoremap . :normal .<CR>
  "}
  "{AndrewRadev/linediff.vim
  vmap <localleader>df :Linediff<cr>
  vmap <localleader>dr :LinediffReset<cr>
  nmap <localleader>ls :LinediffShow<cr>
  "}
  " {terryma/vim-smooth-scroll
  " avoid buffer change the cursor scroll 
  au BufLeave * if !&diff | let b:winview = winsaveview() | endif
  au BufEnter * if exists('b:winview') && !&diff | call winrestview(b:winview) | unlet! b:winview | endif

  nnoremap <silent> <C-Up> :call smooth_scroll#up(&scroll, 0, 2)<CR>
  nnoremap <silent> <C-Down> :call smooth_scroll#down(&scroll, 0, 2)<CR>
  nnoremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
  nnoremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
  " }
    "{dyng/ctrlsf.vim
  " let g:ctrlsf_position = 'bottom'
  " let g:ctrlsf_winsize = '30%'
  " vmap <silent> <localleader>cf :call VM_ctrlsf()<cr>
  " nnoremap <silent> <localleader>cf :call VM_ctrlsf()<cr>
  " nnoremap <C-n> :call VM_ctrlsf()<cr>
  " fun! VM_ctrlsf()
    " let txt = b:VM_Selection.Regions[0].txt
    " call vm#reset()
  " exe "CtrlSF ".txt
  " endfun
    "}
    "
   "{tweekmonster/fzf-filemru
  noremap <silent> <leader>fr :FilesMru<cr>
   "}
   "
  " }
 "  {dhruvasagar/vim-table-mode
  let g:loaded_table_mode = 1
   "" Use this option to define the table corner character
  let g:table_mode_corner = '|'
  " Use this option to define the delimiter which used by
  let g:table_mode_delimiter = ' '
  noremap <leader>itb :Tableize<cr>
  " }
  "{codi.vim
  noremap <silent> <localleader>cd :Codi!!<cr>
  "}

  " {roxma/vim-paste-easy
  let g:paste_easy_message=0
  " }

  "{KabbAmine/zealvim.vim
  nmap <silent> <leader>gz <Plug>Zeavim
  vmap <leader>gz <Plug>ZVVisSelection
  let g:zv_disable_mapping = 1
  let g:zv_get_docset_by = ['ft']
  let g:zv_file_types = {
              \   'css'                 : 'css',
              \   'javascript'          : 'javascript,nodejs',
              \   'python'              : 'python,django',
              \ }
  "}

  "{tyru/open-browser.vim
  let g:netrw_nogx = 1 " disable netrw's gx mapping.
	nmap <leader>go <Plug>(openbrowser-smart-search)
	vmap <leader>go <Plug>(openbrowser-smart-search)
  "}

  " ludovicchabant/vim-gutentags

  let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']


  let g:gutentags_ctags_tagfile = 'tags'
  let s:vim_tags = expand('~/.cache/tags')
  " let s:vim_tags = expand('$PWD')
  let g:gutentags_cache_dir = s:vim_tags

  let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
  let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
  let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

  if !isdirectory(s:vim_tags)
     silent! call mkdir(s:vim_tags, 'p')
  endif
  set tags=s:vim_tags;,tags
  "}
  " iamcco/dict.vim
  " {
  let g:api_key = "1932136763"
  let g:keyfrom = "aioiyuuko"
  nmap <silent> <Leader>yd <Plug>DictWSearch  
  vmap <silent> <Leader>yd <Plug>DictRVSearch
  nnoremap <silent> <nop> <Plug>DictSearch
  vnoremap <silent> <nop> <Plug>DictVSearch

  " }
