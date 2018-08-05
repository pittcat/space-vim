let g:markdown_composer_autostart=0
autocmd FileType markdown nnoremap <silent> <leader>mmp :call mdip#MarkdownClipboardImage()<CR>
autocmd FileType markdown nnoremap <silent> <buffer> <F5> :ComposerOpen<CR>
