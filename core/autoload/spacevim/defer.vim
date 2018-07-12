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
function! spacevim#defer#vimsignify(timer) abort
  call s:lod('vim-signify')
endfunction

" 350
function! spacevim#defer#lsp(timer) abort
  call s:lod('LanguageClient-neovim')
endfunction

" 400
function! spacevim#defer#programming(timer) abort
  call s:lod('rainbow', 'vim-rooter', 'vim-polyglot')
endfunction

" 500

function! spacevim#defer#defaults(timer) abort
  call s:lod('vim_current_word', 'vim-signature', 'vim-rsi','traces.vim')
endfunction

" 550
function! spacevim#defer#markdown(timer) abort
  call s:lod('vim-markdown','vim-markdown-composer','vim-markdown-toc','md-img-paste.vim')
endfunction

function! spacevim#defer#rust(timer) abort
  call s:lod('rust.vim')
endfunction

function! spacevim#defer#go(timer) abort
   call s:lod('vim-go')
endfunction

function! spacevim#defer#python(timer) abort
  call s:lod('vim-python-pep8-indent','SimpylFold','vim-python/python-syntax')
endfunction


function! spacevim#defer#clang(timer) abort
  call s:lod('vim-clang-format','vim-cpp-enhanced-highlight')
endfunction
function! spacevim#defer#javascript(timer) abort
  call s:lod('vim-javascript','vim-jsx')
endfunction
function! spacevim#defer#ruby(timer) abort
  call s:lod('vim-ruby','vim-rbenv','vim-bundler','vim-rails','vim-rake','rspec.vim','vim-rspec')
endfunction
function! spacevim#defer#typescript(timer) abort
  call s:lod('typescript-vim','vim-tsx')
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
  call s:lod('vim-mundo','vim-auto-save','vim-nerdtree-tabs','vim-signify','vim-eunuch','vim-gtfo')
endfunction

" 800
function! spacevim#defer#fugitive(timer) abort
  call s:lod('vim-fugitive')
endfunction

" 850
function! spacevim#defer#copy_and_paste(timer) abort
  call s:lod('fzf-filemru','vim-paste-easy')
endfunction

" 900
function! spacevim#defer#operation_freestyle(timer) abort
  call s:lod('vim-repeat','wildfire.vim','tabman.vim','BufOnly.vim','splitjoin.vim','vim-smooth-scroll','change-inside-surroundings.vim','linediff.vim','smartpairs.vim')
endfunction

" 1400
function! spacevim#defer#awesome_tools(timer) abort
  call s:lod('nginx.vim','vim-table-mode','vim-lastplace','fcitx.vim','zeavim.vim','open-browser.vim','vim-gutentags','dict.vim','vim-highlightedyank')
endfunction

