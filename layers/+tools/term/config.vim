augroup terminal_settings
  autocmd!
  autocmd TermClose term://*
        \ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
        \   call nvim_input('<CR>')  |
        \ endif
augroup END

tnoremap <silent> <C-[><C-[> <C-\><C-n> augroup terminal_settings
nnoremap <silent> <Leader>' :Deol<CR>


function! OpenVterm()
  let cwd=fnamemodify('.', ':p')
  execute 'Deol' '-cwd='.cwd '-split=vertical'
endfunction
nnoremap <silent> <Leader>vt :call OpenVterm()<cr>

