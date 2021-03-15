local dap = require('dap')
local api = vim.api

vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})

-- cpp
dap.adapters.cpp = {
    type = 'executable',
    name = "cppdbg",
    command = os.getenv('HOME') .. '/.ndap_debugger/ms-vscode.cpptools-1.2.2/debugAdapters/OpenDebugAD7',
    args = {},
    attach = {
        pidProperty = "processId",
        pidSelect = "ask"
    }
}

vim.cmd [[
    command! -complete=file -nargs=* DebugC lua require "ndap_debug".start_c_debugger_interminal({<f-args>}, "gdb")
]]
vim.cmd [[
    command! -complete=file -nargs=* DebugRust lua require "ndap_debug".start_c_debugger_interminal({<f-args>}, "gdb", "rust-gdb")
]]

vim.cmd [[
    command! -complete=file -nargs=* ExDebugC lua require "ndap_debug".start_c_debugger_external_terminal({<f-args>}, "gdb")
]]

vim.cmd [[
    command! -complete=file -nargs=* ExDebugRust lua require "ndap_debug".start_c_debugger_external_terminal({<f-args>}, "gdb", "rust-gdb")
]]

-- python
require('dap-python').test_runner = 'pytest'
table.insert(dap.configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'Launch file in external terminal',
  program = '${file}',   
  console = 'externalTerminal';
})

-- go
dap.adapters.go = function(callback, config)
  local handle
  local pid_or_err
  local port = 38697
  handle, pid_or_err =
    vim.loop.spawn(
    "dlv",
    {
      args = {"dap", "-l", "127.0.0.1:" .. port},
      detached = true
    },
    function(code)
      handle:close()
      print("Delve exited with exit code: " .. code)
    end
  )
   ----should we wait for delve to start???
  vim.defer_fn( function()
    dap.repl.open()
    callback({type = "server", host = "127.0.0.1", port = port})
  end,
  100)
end
-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
  {
    type = "go",
    name = "Debug",
    request = "launch",
    program = "${file}",
  }
}


-- js
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.ndap_debugger/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
  {
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
}

-- external terminal
dap.defaults.fallback.external_terminal = {
  command = '/usr/bin/alacritty';
  args = {'-e'};
}

-- ndap variable show
api.nvim_set_keymap(
    'n', '<A-k>', '<Cmd>lua require("dap.ui.variables").hover()<CR>', { silent = true })
api.nvim_set_keymap(
    'v', '<A-v>', '<Cmd>lua require("dap.ui.variables").visual_hover()<CR>', { silent = true })

-- theHamsta/nvim-dap-virtual-text
vim.g.dap_virtual_text = true
