if g:spacevim.timer
  "simnalamburt/vim-mundo
  "{
  MP 'simnalamburt/vim-mundo'
  let g:mundo_width = 40
  let g:mundo_preview_height = 20
  " let g:mundo_right = 1
  nnoremap <F10> :MundoToggle<CR>
  set undodir=~/.undodir/
  set undofile
  "}

  "{tpope/vim-eunuch'
  MP 'tpope/vim-eunuch'
  "}
  call timer_start(750,'spacevim#defer#filemanage')

  "{tpope/vim-repeat
  MP 'tpope/vim-repeat'
  "}
  "{bufferonly
  MP 'vim-scripts/BufOnly.vim'
  "}
  "
  "
  "{AndrewRadev/splitjoin.vim
  MP 'AndrewRadev/splitjoin.vim'
  " gS  分离
  " gJ  合并
  " }
  "
  "{terryma/vim-smooth-scroll
  MP 'terryma/vim-smooth-scroll'

  "}
  "
  "{briandoll/change-inside-surroundings.vim
  MP 'briandoll/change-inside-surroundings.vim'
  "}
  "{AndrewRadev/linediff.vim
  MP 'AndrewRadev/linediff.vim'
  "}
  call timer_start(900,'spacevim#defer#operation_freestyle')

  "{dhruvasagar/vim-table-mode
  MP 'dhruvasagar/vim-table-mode',{'for':'markdown'}
  "}
  "{dietsche/vim-lastplace
  MP 'dietsche/vim-lastplace'
  "}
  "{voldikss/vim-codelf
  MP 'voldikss/vim-codelf'
  "}
  "{voldikss/vim-translate-me
  MP 'voldikss/vim-translate-me'
  "}
  "hotoo/pangu.vim
  MP 'hotoo/pangu.vim'

  MP 'wfxr/minimap.vim'
  MP 'DanilaMihailov/beacon.nvim'
  call timer_start(1400,'spacevim#defer#awesome_tools')
  MP 'Asheq/close-buffers.vim'

endif
