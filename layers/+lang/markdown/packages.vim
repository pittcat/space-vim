function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

if g:spacevim_timer
  MP 'plasticboy/vim-markdown',      { 'on': [] }
  MP 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') ,'for':'markdown','frozen':1}
  MP 'mzlogin/vim-markdown-toc',     { 'on': ['GenTocGFM', 'GenTocRedcarpet', 'GenTocGitLab', 'UpdateToc', 'RemoveToc'],'for':'markdown'}
  call timer_start(550,'spacevim#defer#markdown')
else
  MP 'plasticboy/vim-markdown',      { 'for': 'markdown' }
  MP 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') ,'for':'markdown','frozen':1}
  MP 'mzlogin/vim-markdown-toc',     { 'on': ['GenTocGFM', 'GenTocRedcarpet', 'GenTocGitLab', 'UpdateToc', 'RemoveToc'],'for':'markdown'}
endif



