lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
    ensure_installed = {'python','c','cpp','java','javascript','css','html','go'}
}
EOF
