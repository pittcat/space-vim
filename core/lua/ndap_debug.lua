local M = {}
local last_gdb_config

M.kill_current_debug = function()
	local dap = require("dap")
	dap.disconnect()
	dap.stop()
end

M.restart_ndap_debugger = function()
	local dap = require("dap")
	local ndap_state = dap.session()
	if ndap_state == nil then
		dap.run_last()
	else
		dap.disconnect()
		dap.stop()
		dap.run_last()
	end
end

M.start_c_internal_debugger = function(args, mi_mode, mi_debugger_path)
	local dap = require("dap")
	if args and #args > 0 then
		last_gdb_config = {
			type = "cpp",
			name = args[1],
			request = "launch",
			program = table.remove(args, 1),
			args = args,
			cwd = vim.fn.getcwd(),
			externalConsole = false,
			MIMode = "gdb",
			MIDebuggerPath = "/usr/bin/gdb",
		}
	end

	if not last_gdb_config then
		print('No binary to debug set! Use ":DebugInTerm <binary> <args>" ')
		return
	end

	dap.run(last_gdb_config)
end

M.start_c_external_debugger = function(args, mi_mode, mi_debugger_path)
	local dap = require("dap")
	if args and #args > 0 then
		last_gdb_config = {
			type = "cpp",
			name = args[1],
			request = "launch",
			program = table.remove(args, 1),
			args = args,
			cwd = vim.fn.getcwd(),
			externalConsole = true,
			MIMode = "gdb",
			MIDebuggerPath = "/usr/bin/gdb",
		}
	end

	if not last_gdb_config then
		print('No binary to debug set! Use ":DebugExTerm <binary> <args>" ')
		return
	end

	dap.run(last_gdb_config)
end

return M
