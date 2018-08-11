let g:ncm2#auto_popup=1
set completeopt=noselect,menuone,noinsert
autocmd BufEnter * call ncm2#enable_for_buffer()
au TextChangedI * call ncm2#auto_trigger()

function! ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippet()
    if g:ulti_expand_res > 0
        return snippet
    else 
        return "\<C-y>"
    endif
endfunction

inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
function! Multiple_cursors_before()
    call ncm2#lock('vim-multiple-cursors')
endfunction

function! Multiple_cursors_after()
    call ncm2#unlock('vim-multiple-cursors')
endfunction

" common
call ncm2#override_source('ultisnips', {'priority': 10})
" language
let g:ncm2_pyclang#library_path = '/usr/lib/libclang.so'
let g:ncm2_pyclang#args_file_path = ['.clang_complete']
let g:ncm2_pyclang#database_path = [
            \ 'compile_commands.json',
            \ 'build/compile_commands.json'
            \ ]
" lsp
call ncm2#override_source('LanguageClient_python', {'enable': 0})
call ncm2#override_source('LanguageClient_cpp', {'enable': 0})
