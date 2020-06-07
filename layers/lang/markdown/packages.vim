MP 'tpope/vim-markdown',{'for':'markdown'}
MP 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install','for':'markdown','frozen':1}
MP 'mzlogin/vim-markdown-toc',     { 'on': ['GenTocGFM', 'GenTocRedcarpet', 'GenTocGitLab', 'UpdateToc', 'RemoveToc'],'for':'markdown'}
MP 'ferrine/md-img-paste.vim',{'for':'markdown'}

autocmd! User vim-markdown,vim-markdown-toc,md-img-paste call spacevim#autocmd#markdown#Init()

