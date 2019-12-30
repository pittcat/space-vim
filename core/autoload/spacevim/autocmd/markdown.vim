let s:loaded = 0

function! spacevim#autocmd#markdown#Init()
  if !s:loaded

" vim-markdown {
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0
" }

" vim-markdown-toc {
  let g:vmt_auto_update_on_save = 1
  let g:vmt_dont_insert_fence = 0
  let g:vim_markdown_toc_autofit = 1
" }
"
"
" {ferrine/md-img-paste.vim
  let g:mdip_imgdir = 'img'
  let g:mdip_imgname = 'image'
" }

  endif
  let s:loaded = 1
endfunction
