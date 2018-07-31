if g:spacevim.tmux
  let g:VimuxHeight = "40"
  let g:VimuxOrientation = "h"
  let g:VimuxRunnerType = "pane"
  nnoremap <silent> <Leader>vr :call spacevim#plug#vimux#VimuxCompileRun()<cr>
  nnoremap <silent> <Leader>vo :call spacevim#plug#vimux#VimuxOpenPane()<CR>
  nnoremap <silent> <Leader>vc :VimuxCloseRunner<cr>
  nnoremap <silent> <Leader>vl :call VimuxSendKeys("C-l")
  nnoremap <silent> <Leader>vz :VimuxZoomRunner<CR>
  nnoremap <silent> <Leader>vb :VimuxInterruptRunner<CR>
  
  " vmap <Leader>vt :call TmuxSendReady()<CR>

endif
