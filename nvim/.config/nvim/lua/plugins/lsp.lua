return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            dependencies = {
                "williamboman/mason.nvim",
            },
        },
        config = function()
            -- automatically register lsps installed through mason
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    -- dont show errors for vim global in config
                    if server_name == "lua_ls" then
                        require("lspconfig").lua_ls.setup({
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim" }
                                    }
                                }
                            }
                        })
                    else
                        -- all other lsps
                        require("lspconfig")[server_name].setup({
                            capabilities = capabilities
                        })
                    end
                end
            })
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {},
    },
}
