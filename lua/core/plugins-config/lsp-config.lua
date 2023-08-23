local nvim_lsp = require('lspconfig')


-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 
    'eslint', 
    'tsserver', 
    'arduino_language_server', 
    'clangd', 
    'terraformls' 
}

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end

vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<leader>D', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
