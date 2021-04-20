local M = {}
local last_gdb_config

M.start_c_debugger_interminal = function(args, mi_mode, mi_debugger_path)
    local dap = require "dap"
    if args and #args > 0 then
        last_gdb_config = {
            type = "cpp",
            name = args[1],
            request = "launch",
            program = table.remove(args, 1),
            args = args,
            cwd = vim.fn.getcwd(),
            env = function()
            local variables = {}
            for k, v in pairs(vim.fn.environ()) do
              table.insert(variables, string.format("%s=%s", k, v))
            end
            return variables
            end,
            externalConsole = false,
            MIMode = "gdb",
            MIDebuggerPath ="/usr/bin/gdb"
          }
    end

    if not last_gdb_config then
        print('No binary to debug set! Use ":DebugC <binary> <args>" or ":DebugRust <binary> <args>"')
        return
    end

    dap.run(last_gdb_config)
end


M.start_c_debugger_external_terminal = function(args, mi_mode, mi_debugger_path)
    local dap = require "dap"
    if args and #args > 0 then
        last_gdb_config = {
            type = "cpp",
            name = args[1],
            request = "launch",
            program = table.remove(args, 1),
            args = args,
            cwd = vim.fn.getcwd(),
            env = function()
            local variables = {}
            for k, v in pairs(vim.fn.environ()) do
              table.insert(variables, string.format("%s=%s", k, v))
            end
            return variables
            end,
            externalConsole = true,
            MIMode = "gdb",
            MIDebuggerPath ="/usr/bin/gdb"
          }
    end

    if not last_gdb_config then
        print('No binary to debug set! Use ":DebugC <binary> <args>" or ":DebugRust <binary> <args>"')
        return
    end

    dap.run(last_gdb_config)
end

M.restart_ndap_debugger = function()
  local dap = require('dap') 
  local ndap_state= dap.session()
  if ndap_state==nil then
    dap.run_last()
  else 
    dap.disconnect()
    dap.run_last()
  end
end
return M
