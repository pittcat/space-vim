local M = {}
local last_gdb_config

M.kill_current_debug = function()
  local dap = require('dap') 
  dap.disconnect()
  dap.stop()
end

M.restart_ndap_debugger = function()
  local dap = require('dap') 
  local ndap_state= dap.session()
  if ndap_state==nil then
    dap.run_last()
  else 
    dap.disconnect()
    dap.stop()
    dap.run_last()
  end
end

return M
