lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
    ensure_installed = {'python','c','cpp','java','javascript','css','html','go'}
}
require "nvim-treesitter.highlight"
local hlmap = vim.treesitter.TSHighlighter.hl_map
hlmap["punctuation.bracket"] = nil
EOF
