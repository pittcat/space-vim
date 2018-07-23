  MP 'cohama/agit.vim'

if g:spacevim.timer

  MP 'tpope/vim-fugitive'     , { 'on': [] }
  MP 'mhinz/vim-signify'      , {'on':[]}
  call timer_start(800, 'spacevim#defer#fugitive')
  call timer_start(300, 'spacevim#defer#vimsignify')
else
  MP 'tpope/vim-fugitive'
  MP 'mhinz/vim-signify'
endif
