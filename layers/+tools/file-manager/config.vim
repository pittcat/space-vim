scriptencoding utf-8

" nerdtree {
  let g:NERDTreeShowHidden=1
  let g:NERDTreeAutoDeleteBuffer=1
  " ❯
  let g:NERDTreeDirArrowExpandable = "\u276f"
  let g:NERDTreeDirArrowCollapsible = "~"
  let g:NERDTreeIgnore = g:spacevim#plug#nerdtree#ignore

  nnoremap <silent> <F4> :NERDTreeToggle<CR>
  inoremap <silent> <F4> <ESC>:NERDTreeToggle<CR>
  nnoremap <silent> <Leader>ft :NERDTreeToggle<CR>
  nnoremap <silent> <Leader>fd :NERDTreeFind<CR>
  let NERDTreeChDirMode=0
  noremap <silent> <leader>nc :NERDTreeCWD<cr>
" }

" nerdtree-git-plugin {
  let g:NERDTreeIndicatorMapCustom = g:spacevim#plug#nerdtree#IndicatorMapCustom
" }

  let g:NERDTreeExtensionHighlightColor = g:spacevim#plug#nerdtree#ExtensionHighlightColor " this line is needed to avoid error
  let g:NERDTreeExactMatchHighlightColor = g:spacevim#plug#nerdtree#ExactMatchHighlightColor " this line is needed to avoid error
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
