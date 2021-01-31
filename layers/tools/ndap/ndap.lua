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

-- variables hover
local keymap_restore = {}
dap.custom_event_handlers['event_initialized']['me'] = function()
  for _, buf in pairs(api.nvim_list_bufs()) do
    local keymaps = api.nvim_buf_get_keymap(buf, 'n')
    for _, keymap in pairs(keymaps) do
      if keymap.lhs == "<A-k>" then
        table.insert(keymap_restore, keymap)
        api.nvim_buf_del_keymap(buf, 'n', '<A-k>')
      end
    end
  end
  api.nvim_set_keymap(
    'n', '<A-k>', '<Cmd>lua require("dap.ui.variables").hover()<CR>', { silent = true })
end

dap.custom_event_handlers['event_terminated']['me'] = function()
  for _, keymap in pairs(keymap_restore) do
    api.nvim_buf_set_keymap(
      keymap.buffer,
      keymap.mode,
      keymap.lhs,
      keymap.rhs,
      { silent = keymap.silent == 1 }
    )
  end
  keymap_restore = {}
end
-- theHamsta/nvim-dap-virtual-text
vim.g.dap_virtual_text = true
