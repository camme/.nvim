local nvim_lsp = require('lspconfig')

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 
    'eslint', 
    'tsserver', 
    'arduino_language_server', 
    'clangd', 
    'terraformls',
    'rust_analyzer',
}

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {
            debounce_text_changes = 150,
        }
    }
end


 require'lspconfig'.rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {
--            check = {
--                command = "clippy";
--            },
            diagnostics = {
                enable = true;
            }
        }
    }
}

vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<leader>D', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts);

--nvim_lsp.rust_analyzer.setup {
--    filetypes = { "rust" },
--    root_dir = nvim_lsp.util.root_pattern("Cargo.toml"),
--
--  -- Server-specific settings. See `:help lspconfig-setup`
--    settings = {
--        ["rust-analyzer"] = {
--            assist = {
--                importMergeBehavior = "last",
--                importPrefix = "by_self",
--            },
--            diagnostics = {
--                disabled = { "unresolved-import" }
--            },
--            cargo = {
--                loadOutDirsFromCheck = true
--            },
--            procMacro = {
--                enable = true
--            },
--            checkOnSave = {
--                command = "clippy"
--            },
--        }
--    },
--}
