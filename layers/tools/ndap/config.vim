luafile ~/.space-vim/layers/tools/ndap/ndap.lua

nnoremap <silent> <F1> :NdapContinue<CR>
nnoremap <silent> <F2> :NdapStOver<CR>
nnoremap <silent> <F3> :NdapStInto<CR>
nnoremap <silent> <F4> :NdapStOut<CR>
nnoremap <silent> <F5> :NdapExit<CR>
nnoremap <silent> <F6> :NdapToggleBt<CR>
nnoremap <silent> <F7> :NdapRstart<CR>

nnoremap <silent> <localleader>ds :NdapCenterScopes<CR>
nnoremap <silent> <localleader>dl :NdapListBt<CR>
nnoremap <silent> <localleader>de :NdapConBt<CR>
nnoremap <silent> <localleader>dk :NdapLogBt<CR>
nnoremap <silent> <localleader>dr :NdapORepl<CR>
nnoremap <silent> <localleader>di :NdapTRepl<CR>
nnoremap <silent> <localleader>dv :NdapHover<CR>
vnoremap <silent> <localleader>dv :NdapHover<CR>

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
command! -nargs=0  NdapHover :lua require('dap.ui.widgets').hover()
command! -nargs=0  NdapExit  :lua require'ndap_debug'.kill_current_debug()
command! -nargs=0  NdapRstart :lua require'ndap_debug'.restart_ndap_debugger()
command! -nargs=0  NdapCenterScopes :lua require'ndap_debug'.dap_center_show_scopes()
