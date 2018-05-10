function! spacevim#vim#auto#AddTitle()
  let l:template = {
        \ 'c': [
          \ '#include <stdio.h>'
          \ ],
        \ 'sh': [
          \ '#!/usr/bin/env sh'
          \ ],
        \ 'zsh': [
          \ '#!/usr/bin/env zsh'
          \ ],
        \ 'cpp': [
          \ '#include <iostream>',
          \ 'using namespace std;'
          \ ],
        \ 'perl': [
          \ '#!/usr/bin/perl',
          \ 'use strict;',
          \ 'use warnings;',
          \ 'use utf8;'
          \ ],
        \ 'python': [
          \ '#!/usr/bin/env python',
          \ '# -*- coding: utf-8 -*-'
          \ ],
        \}
  let l:ft = &filetype
  if has_key(l:template, l:ft)
    call setline(1, l:template[l:ft])
    execute "normal! G"
    call append(line("."), "")
    execute "normal! G"
    startinsert
  endif
endfunction

function! spacevim#vim#auto#AsyncRunStart()
    let l:qf_height = float2nr(round(winheight('%') * 0.3))
    if !exists('*asyncrun#quickfix_toggle')
      call plug#load('asyncrun.vim')
    endif
    call asyncrun#quickfix_toggle(l:qf_height, 1)
endfunction
