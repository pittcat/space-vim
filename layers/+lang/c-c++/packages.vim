if g:spacevim_timer
  MP 'rhysd/vim-clang-format',           { 'for': [ 'c', 'cpp' ] }
  MP 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'c', 'cpp' ] }
  call timer_start(550,'spacevim#defer#clang')
else
  MP 'rhysd/vim-clang-format',           { 'for': [ 'c', 'cpp' ] }
  MP 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'c', 'cpp' ] }
endif
