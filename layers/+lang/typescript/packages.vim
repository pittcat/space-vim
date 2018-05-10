if g:spacevim_timer
  MP 'leafgarland/typescript-vim',  { 'for': 'typescript' }
  MP 'ianks/vim-tsx',               { 'for': 'typescript.tsx' }
  call timer_start(550,'spacevim#defer#typescript')
else
  MP 'leafgarland/typescript-vim',  { 'for': 'typescript' }
  MP 'ianks/vim-tsx',               { 'for': 'typescript.tsx' }
endif
