" function! BuildComposer(info)
  " if a:info.status != 'unchanged' || a:info.force
    " if has('nvim')
      " !cargo build --release
    " else
      " !cargo build --release --no-default-features --features json-rpc
    " endif
  " endif
" endfunction

" MP 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') ,'for':'markdown','frozen':1}
MP 'tpope/vim-markdown',{'for':'markdown'}
MP 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install','for':'markdown','frozen':1}
MP 'mzlogin/vim-markdown-toc',     { 'on': ['GenTocGFM', 'GenTocRedcarpet', 'GenTocGitLab', 'UpdateToc', 'RemoveToc'],'for':'markdown'}
MP 'ferrine/md-img-paste.vim',{'for':'markdown'}

autocmd! User vim-markdown,vim-markdown-composer,vim-markdown-toc,md-img-paste call spacevim#autocmd#markdown#Init()
