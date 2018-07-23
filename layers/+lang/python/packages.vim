if g:spacevim.timer
  MP 'hynek/vim-python-pep8-indent', { 'for': 'python' }
  MP 'vim-python/python-syntax', {'for':'python'}
else
  MP 'hynek/vim-python-pep8-indent', { 'for': 'python' }
  MP 'vim-python/python-syntax', {'for':"python"}
endif
