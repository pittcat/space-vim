scriptencoding utf-8
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
if g:spacevim.nvim || g:spacevim.vim8
  let g:UltiSnipsUsePythonVersion = 3
  let g:UltiSnipsSnippetDirectories=['UltiSnips']
  exe 'set rtp+=' . expand('~/.space-vim/' . '/private/UltiSnips')
  if g:spacevim.vim8
    let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
  else
    let g:UltiSnipsSnippetsDir =  '~/.config/nvim/UltiSnips'
  endif

  let g:UltiSnipsJumpForwardTrigger = '<nop>'
  let g:UltiSnipsJumpBackwardTrigger = '<nop>'
  let g:UltiSnipsExpandTrigger = "<C-z>"


endif

