return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "hrsh7th/cmp-nvim-lsp"
            },
            {
                "williamboman/mason-lspconfig.nvim",
                dependencies = {
                    "williamboman/mason.nvim",
                },
            },
        },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            require("mason-lspconfig").setup_handlers({
                function(server_name)
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
                        require("lspconfig")[server_name].setup({
                            capabilities = capabilities
                        })
                    end
                end
            })
        end
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_uninstalled = "✗",
                    package_pending = "⟳",
                },
            },
        },
    },
    {
        "ray-x/lsp_signature.nvim",
        opts = {
            hint_enable = false
        },
    }
}
