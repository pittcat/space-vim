if g:spacevim.timer
  MP 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'c', 'cpp' ] }
  call timer_start(550,'spacevim#defer#clang')
else
  MP 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'c', 'cpp' ] }
endif
