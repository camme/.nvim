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

vim.keymap.set('n', 'd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'D', vim.lsp.buf.declaration, opts)
