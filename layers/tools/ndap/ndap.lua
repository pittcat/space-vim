local dap = require("dap")

vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })

-- python nvim-dap-python
require("dap-python").setup("/usr/bin/python")
table.insert(dap.configurations.python, {
	type = "python",
	request = "launch",
	name = "Launch file in externalTerminal",
	program = "${file}",
	console = "externalTerminal",
})

-- cpp c rust
dap.adapters.cpp = {
	type = "executable",
	name = "cppdbg",
	command = os.getenv("HOME") .. "/.ndap_debugger/cpptools-linux/extension/debugAdapters/OpenDebugAD7",
	args = {},
	attach = {
		pidProperty = "processId",
		pidSelect = "ask",
	},
}

dap.configurations.cpp = {
  {
    name = "CppExtermDebug",
    type = "cpp",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
    externalConsole = true
  },
  {
    name = "CppIntermDebug",
    type = "cpp",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
    externalConsole = false
  },
}

dap.configurations.c = dap.configurations.cpp

-- go
dap.adapters.go = function(callback, config)
	local handle
	local pid_or_err
	local port = 38697
	handle, pid_or_err = vim.loop.spawn("dlv", {
		args = { "dap", "-l", "127.0.0.1:" .. port },
		detached = true,
	}, function(code)
		handle:close()
		print("Delve exited with exit code: " .. code)
	end)
	-- Wait 100ms for delve to start
	vim.defer_fn(function()
		--dap.repl.open()
		callback({ type = "server", host = "127.0.0.1", port = port })
	end, 100)
	--callback({type = "server", host = "127.0.0.1", port = port})
end
-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
	{
		type = "go",
		name = "Debug",
		request = "launch",
		program = "${file}",
	},
	{
		type = "go",
		name = "Debug test", -- configuration for debugging test files
		request = "launch",
		mode = "test",
		program = "${file}",
	},
}
-- js
dap.adapters.node2 = {
	type = "executable",
	command = "node",
	args = { os.getenv("HOME") .. "/.ndap_debugger/vscode-node-debug2/out/src/nodeDebug.js" },
}
dap.configurations.javascript = {
	{
		name = "Run in integratedTerminal",
		type = "node2",
		request = "launch",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		console = "integratedTerminal",
	},
	{
		name = "Run in externalTerminal",
		type = "node2",
		request = "launch",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		console = "externalTerminal",
	},
}

-- external terminal
dap.defaults.fallback.external_terminal = {
	command = "/usr/bin/alacritty",
	args = { "-e" },
}
