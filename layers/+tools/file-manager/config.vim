scriptencoding utf-8

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
  let NERDTreeWinSize=31  " 设置宽度
  let g:nerdtree_tabs_open_on_console_startup=1 " 在终端启动vim时，共享NERDTree
  let NERDTreeIgnore=['\.pyc','\~$','\.swp']  " 忽略一下文件的显示
  let NERDTreeShowBookmarks=1 " 显示书签列表
" }
