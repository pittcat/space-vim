" vim-latex-live-preview {
  " let g:livepreview_previewer = g:spacevim#plug#latex#Previewer
  " let g:livepreview_cursorhold_recompile = 0
" }

" lervag/vimtex {
" Disable math conceal with LaTeX math syntax enabled
  let g:tex_conceal = ''
  let g:vim_markdown_math = 1
  let g:tex_flavor = 'latex'
  let g:vimtex_compiler_progname = 'nvr'
  let g:livepreview_previewer = 'evince'
" }
"
