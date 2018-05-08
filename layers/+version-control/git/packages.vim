MP 'junegunn/gv.vim', { 'on': ['GV', 'GV!'] }

if g:spacevim_timer
  MP 'tpope/vim-fugitive'     , { 'on': [] }
  MP 'mhinz/vim-signify' , { 'on': [] }
  call timer_start(300, 'spacevim#defer#vimsignify')
  call timer_start(800, 'spacevim#defer#fugitive')
else
  MP 'tpope/vim-fugitive'
  MP 'airblade/vim-gitgutter'
endif
