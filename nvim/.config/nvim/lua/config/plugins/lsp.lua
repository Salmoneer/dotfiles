return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        "mason.nvim",
        { "williamboman/mason-lspconfig.nvim", config = function() end },
    },
    config = function()
        vim.lsp.config("*", { capabilities = require("blink.cmp").get_lsp_capabilities() })
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                vim.lsp.enable(server_name)
            end
        })

        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = " ",
                    [vim.diagnostic.severity.WARN] = " ",
                    [vim.diagnostic.severity.HINT] = " ",
                    [vim.diagnostic.severity.INFO] = " ",
                }
            }
        })

        vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end)
    end,
}
