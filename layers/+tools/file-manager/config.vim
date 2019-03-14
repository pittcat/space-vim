scriptencoding utf-8


if g:spacevim_python_version>361

    " defx conf
  nnoremap <silent> <F4> :Defx<CR>
  nnoremap <silent> <leader>ft :Defx<CR>
  noremap <silent> <leader>nc :Defx `expand('%:p:h')` -search=`expand('%:p')` -split=vertical -winwidth=40 -direction=topleft -columns=git:mark:filename:type<cr>

  call defx#custom#option('_', {
        \ 'winwidth': 30,
        \ 'split': 'vertical',
        \ 'direction': 'topleft',
        \ 'show_ignored_files': 0,
        \ 'buffer_name': '',
        \ 'toggle': 1,
        \ })

  autocmd FileType defx call s:defx_my_settings()
    function! s:defx_my_settings() abort
      " Define mappings
      nnoremap <silent><buffer><expr> <CR>
      \ defx#do_action('drop')
      nnoremap <silent><buffer><expr> c
      \ defx#do_action('copy')
      nnoremap <silent><buffer><expr> m
      \ defx#do_action('move')
      nnoremap <silent><buffer><expr> p
      \ defx#do_action('paste')
      nnoremap <silent><buffer><expr> l
      \ defx#do_action('open')
      nnoremap <silent><buffer><expr> E
      \ defx#do_action('open', 'vsplit')
      nnoremap <silent><buffer><expr> P
      \ defx#do_action('open', 'pedit')
      nnoremap <silent><buffer><expr> K
      \ defx#do_action('new_directory')
      nnoremap <silent><buffer><expr> N
      \ defx#do_action('new_file')
      nnoremap <silent><buffer><expr> M
      \ defx#do_action('new_multiple_files')
      nnoremap <silent><buffer><expr> C
      \ defx#do_action('toggle_columns',
      \                'mark:filename:type:size:time')
      nnoremap <silent><buffer><expr> S
      \ defx#do_action('toggle_sort', 'Time')
      nnoremap <silent><buffer><expr> d
      \ defx#do_action('remove')
      nnoremap <silent><buffer><expr> r
      \ defx#do_action('rename')
      nnoremap <silent><buffer><expr> !
      \ defx#do_action('execute_command')
      nnoremap <silent><buffer><expr> x
      \ defx#do_action('execute_system')
      nnoremap <silent><buffer><expr> yy
      \ defx#do_action('yank_path')
      nnoremap <silent><buffer><expr> .
      \ defx#do_action('toggle_ignored_files')
      nnoremap <silent><buffer><expr> ;
      \ defx#do_action('repeat')
      nnoremap <silent><buffer><expr> h
      \ defx#do_action('cd', ['..'])
      nnoremap <silent><buffer><expr> ~
      \ defx#do_action('cd')
      nnoremap <silent><buffer><expr> q
      \ defx#do_action('quit')
      nnoremap <silent><buffer><expr> <Space>
      \ defx#do_action('toggle_select') . 'j'
      nnoremap <silent><buffer><expr> *
      \ defx#do_action('toggle_select_all')
      nnoremap <silent><buffer><expr> j
      \ line('.') == line('$') ? 'gg' : 'j'
      nnoremap <silent><buffer><expr> k
      \ line('.') == 1 ? 'G' : 'k'
      nnoremap <silent><buffer><expr> <C-l>
      \ defx#do_action('redraw')
      nnoremap <silent><buffer><expr> <C-g>
      \ defx#do_action('print')
      nnoremap <silent><buffer><expr> cd
      \ defx#do_action('change_vim_cwd')
  endfunction

  " kristijanhusak/defx-git
  let g:defx_git#indicators = {
    \ 'Modified'  : '✹',
    \ 'Staged'    : '✚',
    \ 'Untracked' : '✭',
    \ 'Renamed'   : '➜',
    \ 'Unmerged'  : '═',
    \ 'Ignored'   : '☒',
    \ 'Deleted'   : '✖',
    \ 'Unknown'   : '?'
    \}

  hi Defx_git_Untracked guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE
  hi Defx_git_Ignored guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE
  hi Defx_git_Unknown guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE
  hi Defx_git_Renamed ctermfg=214 guifg=#fabd2f
  hi Defx_git_Modified ctermfg=214 guifg=#fabd2f
  hi Defx_git_Unmerged ctermfg=167 guifg=#fb4934
  hi Defx_git_Deleted ctermfg=167 guifg=#fb4934
  hi Defx_git_Staged ctermfg=142 guifg=#b8bb26

else


  " nerdtree {
    let g:NERDTreeShowHidden=1
    let g:NERDTreeAutoDeleteBuffer=1
    " ❯
    let g:NERDTreeDirArrowExpandable = "\u276f"
    let g:NERDTreeDirArrowCollapsible = "~"

    nnoremap <silent> <F4> :NERDTreeToggle<CR>
    inoremap <silent> <F4> <ESC>:NERDTreeToggle<CR>
    nnoremap <silent> <Leader>ft :NERDTreeToggle<CR>
    let NERDTreeChDirMode=0
    noremap <silent> <leader>nc :NERDTreeFind<cr>
  " }

  " nerdtree-git-plugin {
  " }

  " {nerdtree-tabs
    let NERDTreeShowLineNumbers=1 " 显示行号
    let NERDTreeAutoCenter=1
    let NERDTreeShowHidden=1  " 是否显示隐藏文件
    let NERDTreeWinSize=30  " 设置宽度
    let g:nerdtree_tabs_open_on_console_startup=1 " 在终端启动vim时，共享NERDTree
    let NERDTreeIgnore=['\.pyc','\~$','\.swp']  " 忽略一下文件的显示
    let NERDTreeShowBookmarks=1 " 显示书签列表
  " }
  "

endif
