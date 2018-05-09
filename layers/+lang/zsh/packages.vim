if g:spacevim_timer
  MP 'chrisbra/vim-zsh',{'for':'zsh'}
  call timer_start(450, 'spacevim#defer#shell')
else
  MP 'chrisbra/vim-zsh',{'for':'zsh'}
endif
