if g:spacevim.timer
  MP 'airblade/vim-rooter'  , { 'on': []}
  MP 'editorconfig/editorconfig-vim', { 'on': 'EditorConfigReload' }
  call timer_start(400, 'spacevim#defer#programming')
else
  MP 'airblade/vim-rooter'
  MP 'editorconfig/editorconfig-vim'
endif


MP 'Yggdroot/indentLine',             { 'on': 'IndentLinesToggle' }
autocmd! User indentLine call spacevim#autocmd#indent#Init()

MP 'skywind3000/asyncrun.vim',        { 'on': ['AsyncRun!'] }
MP 'skywind3000/asyncrun.extra'
