function! s:lod(...)
  " Ignore unknown plugins from vim-plug due to the excluded plugins
  for l:plug in a:000
    silent! call plug#load(l:plug)
  endfor
endfunction

" 200
function! spacevim#defer#ale(timer) abort
  call s:lod('ale')
endfunction

" 250
function! spacevim#defer#airline(timer) abort
  call s:lod('vim-airline', 'vim-airline-themes')
  redraws!
endfunction

" 300
function! spacevim#defer#gitgutter(timer) abort
  call s:lod('vim-gitgutter')
  silent! GitGutterEnable
endfunction

" 400
function! spacevim#defer#programming(timer) abort
  call s:lod('rainbow', 'vim-rooter', 'vim-polyglot')
endfunction

" 500
function! spacevim#defer#defaults(timer) abort
  if has('patch-8.0.1206') || has('nvim-0.2.3')
    call s:lod('traces.vim')
  endif
  call s:lod('vim_current_word', 'vim-signature', 'vim-rsi')
endfunction

" 600
function! spacevim#defer#motion(timer) abort
  call s:lod('vim-sneak', 'vim-easymotion')
endfunction

" 700
function! spacevim#defer#fzf(timer) abort
  call s:lod('fzf', 'fzf.vim')
endfunction

"750
function! spacevim#defer#filemanage(timer) abort
  call s:lod('undotree','vim-auto-save','vim-nerdtree-tabs','vim-signify','vim-eunuch','vim-gtfo')
endfunction

" 800
function! spacevim#defer#fugitive(timer) abort
  call s:lod('vim-fugitive')
endfunction

" 850
function! spacevim#defer#copy_and_paste(timer) abort
  call s:lod('fzf-neoyank','neoyank.vim','vim-system-copy','fzf-filemru','vim-paste-easy')
endfunction

" 900
function! spacevim#defer#operation_freestyle(timer) abort
  call s:lod('vim-repeat','vim-expand-region','tabman.vim','BufOnly.vim','loremipsum','splitjoin.vim','vim-smooth-scroll','change-inside-surroundings.vim','linediff.vim','ctrlsf.vim')
endfunction

" 1400
function! spacevim#defer#awesome_tools(timer) abort
  call s:lod('nginx.vim','vim-table-mode','vim-lastplace','codi.vim','fcitx.vim','zeavim.vim','open-browser.vim','vim-gutentags')
endfunction

function! spacevim#defer#markdown(timer) abort
  call s:lod('vim-markdown')
endfunction

function! spacevim#defer#rust(timer) abort
  call s:lod('rust.vim')
endfunction

function! spacevim#defer#go(timer) abort
   call s:lod('vim-go')
endfunction

function! spacevim#defer#python(timer) abort
  call s:lod('python-mode', 'SimpylFold')
endfunction
