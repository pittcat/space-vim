if g:spacevim.timer
  MP 'justinmk/vim-sneak'                  , { 'on': [] }
  MP 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
  call timer_start(600, 'spacevim#defer#motion')
else
  MP 'justinmk/vim-sneak'
  MP 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
endif
