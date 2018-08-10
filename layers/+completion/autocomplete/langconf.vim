  autocmd InsertEnter * call deoplete#enable()


  " deoplete-------lang extend
  let g:tmuxcomplete#trigger = ''     "  'wellle/tmux-complete.vim'
  let g:deoplete#sources#jedi#python_path='/usr/bin/python3'  "zchee/deoplete-jedi
  let g:deoplete#sources#jedi#server_timeout=10
  let g:deoplete#sources#jedi#debug_server=1
  let g:deoplete#sources#ternjs#tern_bin = '/usr/bin/tern'    " carlitux/deoplete-ternjs
  let g:deoplete#sources#ternjs#filetypes = [
                  \ 'javascript',
                  \ 'jsx',
                  \ 'javascript.jsx',
                  \ 'vue',
                  \ ]

  let g:nvim_typescript#server_path='/usr/bin/tsserver'       " mhartington/nvim-typescript
  let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'   "zchee/deoplete-clang
  let  g:deoplete#sources#clang#clang_header='/usr/lib/clang'
  let g:deoplete#sources#rust#racer_binary='/home/pittcat/.cargo/bin/racer'          "sebastianmarkow/deoplete-rust
  let g:deoplete#sources#rust#rust_source_path='/home/pittcat/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'                "echo `rustc --print sysroot`/lib/rustlib/src/rust/src
  let g:deoplete#sources#rust#documentation_max_height=30
  let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'         " zchee/deoplete-go
  let g:deoplete#sources#go#package_dot = 1
  let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
  let g:deoplete#sources#go#cgo#libclang_path ='/usr/lib/libclang.so'

  " deoplete-common
  let g:python_host_skip_check=1
  let g:python_host_prog = '/usr/bin/python'
  let g:python3_host_skip_check=1
  let g:python3_host_prog = '/usr/bin/python3'

  call deoplete#custom#var('buffer', 'require_same_filetype', v:false)    " otherbuffer complete
  call deoplete#custom#source('LanguageClient','mark', 'ℰ')
  call deoplete#custom#source('omni',          'mark', '⌾')
  call deoplete#custom#source('flow',          'mark', '⌁')
  call deoplete#custom#source('ternjs',        'mark', '⌁')
  call deoplete#custom#source('go',            'mark', '⌁')
  call deoplete#custom#source('jedi',          'mark', '⌁')
  call deoplete#custom#source('vim',           'mark', '⌁')
  call deoplete#custom#source('ultisnips',     'mark', '⌘')
  call deoplete#custom#source('around',        'mark', '↻')
  call deoplete#custom#source('buffer',        'mark', 'ℬ')
  call deoplete#custom#source('tmux-complete', 'mark', '⊶')
  call deoplete#custom#source('syntax',        'mark', '♯')
  call deoplete#custom#source('member',        'mark', '.')

  call deoplete#custom#source('LanguageClient', 'rank', 500)    " change the languageclient ranking
  call deoplete#custom#source('LanguageClient',
              \ 'min_pattern_length',
              \ 2)
  " call deoplete#custom#source('LanguageClient', 'sorters', [])
  call deoplete#custom#source('ultisnips', 'rank', 1000)    " change the snippet ranking
  call deoplete#custom#option('ignore_sources', {'python': ['LanguageClient'],
        \'javascript':['LanguageClient'],'javascript.jsx':['LanguageClient'],'typescript':['LanguageClient'],
        \'cpp':['LanguageClient'],'c':['LanguageClient']
        \ })    " disable LC


  function! ExpandSnippetOrCarriageReturn()
      let snippet = UltiSnips#ExpandSnippet()
      if g:ulti_expand_res > 0
          return snippet
      elseif g:spacevim.vim8
          return "\<C-y>"
      else 
        return deoplete#close_popup()
      endif
  endfunction

  inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
