if g:spacevim.timer
  MP 'airblade/vim-rooter'  , { 'on': []}
  MP 'editorconfig/editorconfig-vim', { 'on': 'EditorConfigReload' }
  call timer_start(400, 'spacevim#defer#programming')
else
  MP 'airblade/vim-rooter'
  MP 'editorconfig/editorconfig-vim'
endif


MP 'lukas-reineke/indent-blankline.nvim', {'branch':'lua'}

MP 'skywind3000/asyncrun.vim',        { 'on': ['AsyncRun!'] }
MP 'skywind3000/asyncrun.extra'
