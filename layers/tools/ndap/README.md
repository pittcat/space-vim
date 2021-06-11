# How to config nvim-dap for cfamily ?

- 将vscode cpptools (一般位于HOME/.vscode/extensions)移动到一个文件夹里面,并且mv cppdbg.ad7Engine.json  nvim-dap.ad7Engine.json
- 配置adapter
```lua
dap.adapters.cpp = {
    type = 'executable',
    name = "cppdbg",
    command = os.getenv('HOME') .. '/.ndap_debugger/ms-vscode.cpptools-1.2.2/debugAdapters/OpenDebugAD7',
    -- 或者
    command = vim.api.nvim_get_runtime_file("gadgets/linux/vscode-cpptools/debugAdapters/OpenDebugAD7", false)[1], --  // ensure that vimspector is located inside the nvim runtime folder 
    args = {},
    attach = {
        pidProperty = "processId",
        pidSelect = "ask"
    }
}
```
- 可能需要配置/.space-vim/core/lua/ndap_debug.lua

参考：https://github.com/Pocco81/DAPInstall.nvim/issues/4#issuecomment-859494997
