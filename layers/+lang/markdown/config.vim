" markdown-composer
let g:markdown_composer_open_browser=0
let g:markdown_composer_refresh_rate=500

" iamcco/markdown-preview.nvim
let g:mkdp_auto_close = 0

autocmd FileType markdown nnoremap <silent> <leader>mmp :call mdip#MarkdownClipboardImage()<CR>
" autocmd FileType markdown nnoremap <silent> <buffer> <F5> :ComposerOpen<CR>
" let g:markdown_composer_refresh_rate=250
autocmd FileType markdown nnoremap <silent> <buffer> <F5> :MarkdownPreview<CR>

"ncm2 look
autocmd FileType markdown let b:ncm2_look_enabled = 1
