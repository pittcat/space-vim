if g:spacevim.timer
  MP 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ 'frozen': 1,
      \ 'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter']
      \ }
  call timer_start(450, 'spacevim#defer#lsp')
else
  MP 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ 'on_event': ['CursorHold', 'CursorHoldI', 'InsertEnter']
      \ }
endif

