if g:spacevim.nvim
  MP 'Shougo/deoplete.nvim',{ 'do': ':UpdateRemotePlugins'  }
elseif g:spacevim.vim8
  MP 'Shougo/deoplete.nvim'
  MP 'roxma/nvim-yarp'
  MP 'roxma/vim-hug-neovim-rpc'
endif
