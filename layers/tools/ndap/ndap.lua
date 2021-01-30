local dap = require('dap')
local api = vim.api

-- python
require('dap-python').test_runner = 'pytest'

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
