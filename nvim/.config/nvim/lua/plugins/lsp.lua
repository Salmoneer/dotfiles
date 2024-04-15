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
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities
                    })
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
        opts = {},
    }
}
