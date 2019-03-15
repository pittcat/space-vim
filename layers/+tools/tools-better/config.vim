  "tpope/vim-eunuch
  "{rename and mkdir
  function! GiveFileNewName()
    let l:filename = input('new file name for rename:',expand('%:t'))
    if(empty(l:filename)) | return | endif
    execut 'Rename' l:filename
  endfunction
    noremap <leader>rn :call GiveFileNewName()<cr>
  function! CreateDirectory()
    let l:directory = input('new directory name:','')
    if(empty(l:directory)) | return | endif
    execute 'Mkdir' l:directory
  endfunction
    noremap <leader>cd :call CreateDirectory()<cr>
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
   "{tweekmonster/fzf-filemru and Vigemus/fzf-proj.vim
  noremap <silent> <leader>fr :FilesMru<cr>
  let g:fzf#proj#project_dir='~/MEGA/gitlab/'
  noremap <silent> <leader>fp :Projects<cr>
   "}
   "
  " }
 "  {dhruvasagar/vim-table-mode
   "" Use this option to define the table corner character
  let g:table_mode_corner = '|'
  " Use this option to define the delimiter which used by
  let g:table_mode_delimiter = ' '
  noremap <leader>itb :Tableize<cr>
  vnoremap <leader>itb :Tableize<cr>
  " }

  "{KabbAmine/zealvim.vim
  nmap <silent> <leader>gz <Plug>Zeavim
  vmap <leader>gz <Plug>ZVVisSelection
  let g:zv_disable_mapping = 1
  let g:zv_file_types = {
              \   'css'                 : 'css',
              \   'javascript'          : 'javascript,nodejs',
              \   'python'              : 'python_3,scipy,numpy,matplotlib',
              \ }
  "}

  "{tyru/open-browser.vim
	nmap <leader>go <Plug>(openbrowser-smart-search)
	vmap <leader>go <Plug>(openbrowser-smart-search)
  "}

  " hackingcat/dict.vim
  " {
  let g:api_key = "1932136763"
  let g:keyfrom = "aioiyuuko"
  nmap <silent> <Leader>yd <Plug>DictWSearch
  function! Space_Dict_Search()
    let l:vselection = spacevim#util#VisualSelection()
    call dict#Search(l:vselection, 'complex')
  endfunction
  vnoremap <silent> <Leader>yd :call Space_Dict_Search()<cr>

  " }
  "{machakann/vim-highlightedyank
  " if !exists('##TextYankPost')
    " map y <Plug>(highlightedyank)
  " endif
  " let g:highlightedyank_highlight_duration = 1000
  "}
