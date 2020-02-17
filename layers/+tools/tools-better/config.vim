  "tpope/vim-eunuch
  "{mkdir
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
   "
  " }
 "  {dhruvasagar/vim-table-mode
  let g:loaded_table_mode = 1
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
  let g:vsm_default_mappings=0
	nmap <leader>go :SearchCurrentText<cr>
	vmap <leader>go :SearchVisualText<cr>
  "}

  " voldikss/vim-translate-me
  " {
  nmap <silent> <leader>yd <Plug>TranslateW
  vmap <silent> <leader>yd <Plug>TranslateWV
  nmap <silent> <leader>yr <Plug>TranslateR
  vmap <silent> <leader>yr <Plug>TranslateRV
  let g:vtm_default_mapping=0
  " }
  " {voldikss/vim-codelf
  nnoremap <localleader>cd :Codelf 
  " }
