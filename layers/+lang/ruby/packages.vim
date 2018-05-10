if g:spacevim_timer
  MP 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
  MP 'tpope/vim-rbenv', { 'for': 'ruby' }
  MP 'tpope/vim-bundler', { 'for': 'ruby' }
  MP 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'coffee', 'javascript'] }
  MP  'tpope/vim-rake', { 'for': 'ruby' }
  MP 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
  call timer_start(550,'spacevim#defer#ruby')
else
  MP 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
  MP 'tpope/vim-rbenv', { 'for': 'ruby' }
  MP 'tpope/vim-bundler', { 'for': 'ruby' }
  MP 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'coffee', 'javascript'] }
  MP  'tpope/vim-rake', { 'for': 'ruby' }
  MP 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
endif
