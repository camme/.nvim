require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'c',
        'lua',
        'rust',
        'vim',
        'typescript',
        'javascript',
        'terraform',
        'css',
        'html',
        'tsx',
        'yaml',
        'dart',
        'rust',
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true
    },
}
