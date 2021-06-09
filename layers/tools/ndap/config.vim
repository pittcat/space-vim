luafile ~/.space-vim/layers/tools/ndap/ndap.lua

nnoremap <silent> <F1> :NdapContinue<CR>
nnoremap <silent> <F2> :NdapStOver<CR>
nnoremap <silent> <F3> :NdapStInto<CR>
nnoremap <silent> <F4> :NdapExit<CR>
nnoremap <silent> <F5> :NdapToggleBt<CR>
nnoremap <silent> <F6> :NdapRstart<CR>
nnoremap <silent> <localleader>do :NdapStOut<CR>
nnoremap <silent> <localleader>dt :NdapToggleBt<CR>
nnoremap <silent> <localleader>dl :NdapListBt<CR>
nnoremap <silent> <localleader>de :NdapConBt<CR>
nnoremap <silent> <localleader>dk :NdapLogBt<CR>
nnoremap <silent> <localleader>dr :NdapORepl<CR>
nnoremap <silent> <localleader>di :NdapTRepl<CR>
nnoremap <silent> <localleader>dp :NdapRstart<CR>

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
command! -nargs=0  NdapExit  :lua require'ndap_debug'.kill_current_debug()
command! -nargs=0  NdapRstart :lua require'ndap_debug'.restart_ndap_debugger()
" nvim-dap-ui
command! -nargs=0  NdapUiShow :lua require("dapui").toggle()
nnoremap <silent> <localleader>ds :NdapUiShow<CR>

" python
command! -nargs=0  NdapPyTest :lua require('dap-python').test_method()
autocmd FileType python nnoremap <buffer> <localleader>dn :NdapPyTest<cr>

" -- rcarriga/nvim-dap-ui
function s:InitNvimDapUi() abort
  lua << EOF
  require("dapui").setup({
  icons = {
    expanded = "⯆",
    collapsed = "⯈"
  },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = {"<CR>", "<2-LeftMouse>"},
    open = "o",
    remove = "d",
    edit = "e",
  },
  sidebar = {
    elements = {
      -- You can change the order of elements in the sidebar
      "scopes",
      "breakpoints",
      "stacks",
      "watches"
    },
    width = 40,
    position = "left" -- Can be "left" or "right"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil   -- Floats will be treated as percentage of your screen.
  }
})
EOF
endfunction

autocmd FileType python,cpp,c,go,javascript  call s:InitNvimDapUi()
