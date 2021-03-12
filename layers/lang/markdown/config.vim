" iamcco/markdown-preview.nvim
let g:mkdp_auto_close = 0
let g:mkdp_refresh_slow = 1
let g:mkdp_markdown_css = '$HOME/.space-vim/layers/+lang/markdown/github-markdown.css'
let g:mkdp_highlight_css = '$HOME/.space-vim/layers/+lang/markdown/github-markdown.css'

autocmd FileType markdown nnoremap <silent> <buffer> <F7> :MarkdownPreview<CR>

command MarkPimg call mdip#MarkdownClipboardImage()
autocmd FileType markdown nnoremap <silent> <leader>mp :MarkPimg<CR>
