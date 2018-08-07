let g:markdown_composer_open_browser=0
let g:markdown_composer_refresh_rate=500
autocmd FileType markdown nnoremap <silent> <leader>mmp :call mdip#MarkdownClipboardImage()<CR>
autocmd FileType markdown nnoremap <silent> <buffer> <F5> :ComposerOpen<CR>
