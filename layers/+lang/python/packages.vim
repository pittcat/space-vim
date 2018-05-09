if g:spacevim_timer
  MP 'tmhedberg/SimpylFold',    { 'for': 'python' }
  MP 'hynek/vim-python-pep8-indent', { 'for': 'python' }
  MP 'vim-python/python-syntax', {'for':"python"}
  call timer_start(550,'spacevim#defer#python')
else
  MP 'tmhedberg/SimpylFold',    { 'for': 'python' }
  MP 'hynek/vim-python-pep8-indent', { 'for': 'python' }
  MP 'vim-python/python-syntax', {'for':"python"}
endif
