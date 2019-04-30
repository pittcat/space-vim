  "tpope/vim-eunuch
  "{rename and mkdir
  function! RenameFile()
    let l:old_name = expand('%')
    let l:new_name = input('New file name: ', expand('%'), 'file')
    if(empty(l:new_name)) | return | endif
    if filereadable(l:new_name)
      redraw
      echo l:new_name . " exists"
    else
      silent exec 'bdelete ' . l:old_name
      exec ':silent !mv ' . l:old_name . ' ' . l:new_name
      exec 'edit ' . l:new_name
      exec 'w ' . l:new_name
      redraw!
    endif
  endfunction
  noremap <leader>rn :call RenameFile()<cr>
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

  " voldikss/vim-translate-me
  " {
  nmap <silent> <leader>yd <Plug>TranslateW
  vmap <silent> <leader>yd <Plug>TranslateWV
  nmap <silent> <leader>yr <Plug>TranslateR
  vmap <silent> <leader>yr <Plug>TranslateRV
  let g:vtm_default_mapping=0
  " }
  "{machakann/vim-highlightedyank
  " if !exists('##TextYankPost')
    " map y <Plug>(highlightedyank)
  " endif
  " let g:highlightedyank_highlight_duration = 1000
  "}
