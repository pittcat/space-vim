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
  let g:UltiSnipsRemoveSelectModeMappings = 1

  if !has_key(g:plugs, 'coc.nvim')
    let g:UltiSnipsJumpForwardTrigger = '<C-j>'
    let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
  endif
  let g:UltiSnipsExpandTrigger = "<C-z>"

  " function! TabJumpNext()
   " let snippet=UltiSnips#JumpForwards()
   " if pumvisible()==0
     " if g:ulti_jump_forwards_res==1
       " return snippet
     " else
       " return "\<tab>"
     " endif
   " endif
  " endfunction
  " inoremap <expr> <tab> pumvisible() ? "<C-n>" : "<C-R>=TabJumpNext()<CR>"
  inoremap <expr> <tab> pumvisible() ? "<C-n>" : "\<tab>"

  " function! STabJumpBack()
   " let snippet=UltiSnips#JumpBackwards()
   " if pumvisible()==0
     " if g:ulti_jump_backwards_res==1
       " return snippet
     " else
       " return "\<s-tab>"
     " endif
   " endif
  " endfunction

  " inoremap <expr> <s-tab> pumvisible() ? "<C-p>" : "<C-R>=STabJumpBack()<CR>"
  inoremap <expr> <s-tab> pumvisible() ? "<C-p>" : "\<s-tab>"

  " smap <TAB>   <Esc>:call UltiSnips#JumpForwards()<CR>
  " smap <S-TAB> <Esc>:call UltiSnips#JumpBackwards()<CR>


endif

