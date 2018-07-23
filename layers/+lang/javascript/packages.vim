if g:spacevim.timer
  MP 'pangloss/vim-javascript',  { 'for': ['javascript'] }
  MP 'mxw/vim-jsx',              { 'for': ['javascript', 'javascript.jsx'] }
  call timer_start(550,'spacevim#defer#javascript')
else
  MP 'pangloss/vim-javascript',  { 'for': ['javascript'] }
  MP 'mxw/vim-jsx',              { 'for': ['javascript', 'javascript.jsx'] }
endif
