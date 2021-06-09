local dap = require('dap')
local api = vim.api

vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})

-- python nvim-dap-python
require('dap-python').setup('/usr/bin/python')
require('dap-python').test_runner = 'pytest'
table.insert(dap.configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'Launch file in externalTerminal',
  program = '${file}',   
  console = 'externalTerminal';
})

-- js
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.ndap_debugger/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
  {
    name = 'Run in integratedTerminal',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    name = 'Run in externalTerminal',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'externalTerminal',
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
