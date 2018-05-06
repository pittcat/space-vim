if g:spacevim_timer
  MP 'tmhedberg/SimpylFold',    { 'on': [] }
  MP 'hynek/vim-python-pep8-indent', { 'on': [] }
else
  MP 'tmhedberg/SimpylFold',    { 'for': 'python' }
  MP 'hynek/vim-python-pep8-indent', { 'for': 'python' }
endif
