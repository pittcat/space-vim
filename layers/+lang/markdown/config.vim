" vim-markdown {
  let g:vim_markdown_math = 1
  let g:vim_markdown_frontmatter = 1
  let g:vim_markdown_conceal = 0
" }

" vim-markdown-toc {
  let g:vmt_auto_update_on_save = 1
  let g:vmt_dont_insert_fence = 0
  let g:vim_markdown_toc_autofit = 1
" }
"
"
" {ferrine/md-img-paste.vim
  autocmd FileType markdown nnoremap <silent> <leader>mmp :call mdip#MarkdownClipboardImage()<CR>
  let g:mdip_imgdir = 'img'
  let g:mdip_imgname = 'image'
" }

