if g:spacevim.timer
  MP 'justinmk/vim-sneak'                  , { 'on': [] }
  MP 'easymotion/vim-easymotion'           , { 'on': [] }
  call timer_start(600, 'spacevim#defer#motion')
else
  MP 'justinmk/vim-sneak'
  MP 'easymotion/vim-easymotion'
endif
