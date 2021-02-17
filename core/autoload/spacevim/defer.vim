function! s:lod(...)
  " Ignore unknown plugins from vim-plug due to the excluded plugins
  for l:plug in a:000
    call plug#load(l:plug)
  endfor
endfunction



" 280
function! spacevim#defer#fzf(timer) abort
  call s:lod('fzf', 'fzf.vim')
endfunction

" 300
function! spacevim#defer#vimsignify(timer) abort
  call s:lod('vim-signify')
endfunction

" 350
function! spacevim#defer#lsp(timer) abort
  call s:lod('LanguageClient-neovim')
endfunction

" 400
function! spacevim#defer#programming(timer) abort
  call s:lod('rainbow','editorconfig-vim','vim-rooter')
endfunction

" 500

function! spacevim#defer#defaults(timer) abort
  call s:lod('vim-signature', 'vim-rsi','traces.vim','vim-illuminate')
endfunction


" 600
function! spacevim#defer#motion(timer) abort
  call s:lod('vim-sneak', 'aerojump.nvim')
endfunction


"750
function! spacevim#defer#filemanage(timer) abort
  call s:lod('vim-mundo','vim-eunuch')
endfunction

" 800
function! spacevim#defer#fugitive(timer) abort
  call s:lod('vim-fugitive','vim-githubinator')
endfunction
" 900
function! spacevim#defer#operation_freestyle(timer) abort
  call s:lod('vim-repeat','BufOnly.vim','splitjoin.vim','vim-smooth-scroll','change-inside-surroundings.vim','linediff.vim')
endfunction

" 1400
function! spacevim#defer#awesome_tools(timer) abort
  call s:lod('vim-table-mode','vim-lastplace','vim-codelf','pangu.vim','minimap.vim','beacon.nvim')
endfunction

