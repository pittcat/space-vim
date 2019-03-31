if g:spacevim.timer
  "simnalamburt/vim-mundo 
  "{
  MP 'simnalamburt/vim-mundo'
  let g:mundo_width = 40
  let g:mundo_preview_height = 20
  " let g:mundo_right = 1
  nnoremap <F2> :MundoToggle<CR>
  set undodir=~/.undodir/
  set undofile
  "}
  
  "
  "
  ""
  " {autosave
  MP '907th/vim-auto-save'
  let g:auto_save = 1
  let g:auto_save_silent = 1
  let g:auto_save_events=["InsertLeave","InsertEnter","TextChanged"]
  let g:auto_save_write_all_buffers=1
  let g:autosave_timer=2500
  "}

  "{tpope/vim-eunuch'
  MP 'tpope/vim-eunuch'
  "}
  "{hackingcat/vim-rename
  MP 'hackingcat/vim-rename'
  "}
  "{
  MP 'justinmk/vim-gtfo'
  " got--------->terminal or tmux
  " gof--------->file manager
  "}

  call timer_start(750,'spacevim#defer#filemanage')

  "{
  MP 'tweekmonster/fzf-filemru'
  MP 'Vigemus/fzf-proj.vim'
  "}

  call timer_start(850,'spacevim#defer#copy_and_paste')


  "{tpope/vim-repeat
  MP 'tpope/vim-repeat'
  "}
  "{
  MP 'kien/tabman.vim'
  nnoremap <silent> <F7> :TMToggle<cr>
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
  "
  "{dyng/ctrlsf.vim
  " MP 'dyng/ctrlsf.vim'
  "}
  call timer_start(900,'spacevim#defer#operation_freestyle')

  "{
  MP 'chr4/nginx.vim'                 "nginx高亮
  "}
  "{dhruvasagar/vim-table-mode
  MP 'dhruvasagar/vim-table-mode',{'for':'markdown'}
  "}
  "{dietsche/vim-lastplace
  MP 'dietsche/vim-lastplace'
  "}
  " {lilydjwg/fcitx.vim
  MP 'lilydjwg/fcitx.vim',{'for':'markdown'}
  " }
  "{KabbAmine/zeavim.vim
  MP 'KabbAmine/zeavim.vim'
  "}
  "{tyru/open-browser.vim
  MP 'tyru/open-browser.vim'
  "}
  "{iamcco/dict.vim
  MP 'hackingcat/dict.vim'
  "}
  "{machakann/vim-highlightedyank
  " MP 'machakann/vim-highlightedyank'
  "}
  call timer_start(1400,'spacevim#defer#awesome_tools')

endif
