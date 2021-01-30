function CleanVpectorEmptyTerminal() abort
  for i in filter(range(1, bufnr('$')), 'buflisted(v:val)')
      if getbufvar(i, '&buftype', '')==#'terminal'
      " if (jobwait([getbufvar(bufname(i), '&channel')], 0)[0]==#-3) && getbufvar(i, '&buftype', '')==#'terminal'
        if stridx(bufname(i),'neoterm')<0
          silent execute 'bd! '.bufname(i)
        endif
      endif
  endfor
endfunction

nnoremap <silent> <F7> :call CleanVpectorEmptyTerminal()<cr>
nnoremap <silent> <F6> :NdapContinue<CR>
nnoremap <silent> <F10> :NdapStInto<CR>
nnoremap <silent> <localleader>dc :NdapContinue<CR>
nnoremap <silent> <localleader>ds :NdapStOver<CR>
nnoremap <silent> <localleader>di :NdapStInto<CR>
nnoremap <silent> <localleader>do :NdapStOut<CR>
nnoremap <silent> <localleader>dt :NdapToggleBt<CR>
nnoremap <silent> <localleader>dl :NdapListBt<CR>
nnoremap <silent> <localleader>de :NdapConBt<CR>
nnoremap <silent> <localleader>dk :NdapLogBt<CR>
nnoremap <silent> <localleader>dr :NdapORepl<CR>
nnoremap <silent> <localleader>dw :NdapLRepl<CR>
nnoremap <silent> <localleader>dp :NdapTRepl<CR>

lua require('dap-python').setup('/usr/bin/python')
command! -nargs=0  NdapContinue :lua require'dap'.continue()
command! -nargs=0  NdapStOver :lua require'dap'.step_over()
command! -nargs=0  NdapStInto :lua require'dap'.step_into()
command! -nargs=0  NdapStOut :lua require'dap'.step_out()
command! -nargs=0  NdapToggleBt :lua require'dap'.toggle_breakpoint()
command! -nargs=0  NdapListBt :lua require'dap'.list_breakpoints({}, 'vsplit')
command! -nargs=0  NdapConBt :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
command! -nargs=0  NdapLogBt :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
command! -nargs=0  NdapORepl :lua require'dap'.repl.open({}, 'vsplit')
command! -nargs=0  NdapTRepl :lua require'dap'.repl.toggle()
command! -nargs=0  NdapLRepl :lua require'dap'.repl.run_last()

luafile ~/.space-vim/layers/tools/ndap/ndap.lua
