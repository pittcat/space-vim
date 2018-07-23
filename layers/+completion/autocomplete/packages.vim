if g:spacevim.nvim
  MP 'Shougo/deoplete.nvim',{ 'do': ':UpdateRemotePlugins'  }
elseif g:spacevim.vim8
  MP 'maralla/completor.vim',{'do': 'cd pythonx/completers/javascript && npm install'}
  MP 'ferreum/completor-tmux'     "complete tmux
endif
