if g:spacevim.timer
  MP 'rust-lang/rust.vim', { 'on': [] }
  call timer_start(550,'spacevim#defer#rust')
else
  MP 'rust-lang/rust.vim', { 'for': 'rust' }
endif
