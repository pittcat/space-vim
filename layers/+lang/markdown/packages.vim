function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

MP 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') ,'for':'markdown','frozen':1}
MP 'plasticboy/vim-markdown',      { 'on': [] }
" MP 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install','for':'markdown','frozen':1}
MP 'mzlogin/vim-markdown-toc',     { 'on': ['GenTocGFM', 'GenTocRedcarpet', 'GenTocGitLab', 'UpdateToc', 'RemoveToc'],'for':'markdown'}
MP 'filipekiss/ncm2-look.vim',{'for':'markdown'}
MP 'ferrine/md-img-paste.vim',{'for':'markdown'}

call timer_start(800, 'spacevim#defer#markdown')
autocmd! User vim-markdown,vim-markdown-composer,vim-markdown-toc,md-img-paste call spacevim#autocmd#markdown#Init()
