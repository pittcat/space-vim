lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = false,
    },
    ensure_installed = {'python','c','cpp','java','javascript','css','html','go','rust'}
}
require "nvim-treesitter.highlight"
local hlmap = vim.treesitter.highlighter.hl_map
hlmap.error = nil
hlmap["punctuation.bracket"] = nil
EOF
