if g:spacevim_python_version>361
  MP 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  MP 'kristijanhusak/defx-git'
else

  "Refer to https://github.com/junegunn/dotfiles  vimrc
  MP 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
  autocmd! User nerdtree call spacevim#autocmd#nerdtree#Init()
  augroup loadNerdtree
    autocmd!
    autocmd VimEnter * silent! autocmd! FileExplorer
    autocmd BufEnter,BufNew *
                \  if isdirectory(expand('<amatch>'))
                \|   call plug#load('nerdtree')
                \|   call nerdtree#checkForBrowse(expand("<amatch>"))
                \| endif
  augroup END

  MP 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }

  "{nerdtree-tabs
  MP 'jistr/vim-nerdtree-tabs'
  "}

endif
