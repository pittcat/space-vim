if g:spacevim.tmux
  let g:VtrOrientation = "h"
  let g:VtrPercentage = 40
  let g:vtr_filetype_runner_overrides = {
        \ 'python': 'time python {file}',
        \ 'javascript': 'time node {file}'
        \ }
  nnoremap <leader>vo :VtrOpenRunner<cr>
  nnoremap <leader>vr :call spacevim#plug#vimtmuxrunner#Quickrun()<cr>
  nnoremap <leader>vp :call spacevim#plug#vimtmuxrunner#OpenPane()<cr>
  nnoremap <leader>vf :VtrFlushCommand<cr>
  nnoremap <leader>vk :VtrKillRunner<cr>
  nnoremap <leader>vs :VtrSendCommandToRunner<cr>
  nnoremap <leader>vl :VtrClearRunner<cr>
  nnoremap <leader>vd :VtrSendCtrlD<cr>
  xnoremap <C-c><C-c> :VtrSendLinesToRunner<cr>
  nnoremap <C-c><C-l> :VtrSendLinesToRunner<cr>
  xnoremap <C-c><C-l> :VtrSendLinesToRunner<cr>
  xmap <M-\> :VtrSendLinesToRunner<cr>
  nnoremap <M-\> :VtrSendLinesToRunner<cr>
endif

