local dap = require('dap')
local api = vim.api


-- python
require('dap-python').test_runner = 'pytest'
table.insert(dap.configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'Launch file in external terminal',
  program = '${file}',   
  console = 'externalTerminal';
})


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
