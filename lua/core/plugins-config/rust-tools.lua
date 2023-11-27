local rt = require("rust-tools")
local nvim_lsp = require('lspconfig')
local mason_registry = require('mason-registry')

local codelldb = mason_registry.get_package('codelldb')
local extenson_path = codelldb:get_install_path() .. '/extension'
local codelldb_path = extenson_path .. 'adapter/codelldb'
local liblldb_path = extenson_path .. 'lldb/lib/liblldb.dylib'

rt.setup({
    tools = {
        runnables = {
            use_telescope = true,
        },
        inlay_hints = {
            auto = true,
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
        hover_actions = {
            auto_focus = true,
        },

    },


    dap = {
        adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
    },
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<leader>k", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy",
                },
            },
        },

    },
})
