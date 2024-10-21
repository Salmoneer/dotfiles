return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        {
            "hrsh7th/cmp-nvim-lsp",
            dependencies = {
                "neovim/nvim-lspconfig"
            }
        },
        "hrsh7th/cmp-nvim-lsp-signature-help",

        "onsails/lspkind.nvim",
        "windwp/nvim-autopairs",
        "L3MON4D3/LuaSnip",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        -- add brackets when autocompleting functions
        cmp.event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())

        -- lsp icons
        local signs = {
            { name = "DiagnosticSignError", text = "" },
            { name = "DiagnosticSignWarn", text = "" },
            { name = "DiagnosticSignHint", text = "" },
            { name = "DiagnosticSignInfo", text = "" },
        }

        for _, sign in ipairs(signs) do
            vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
        end

        -- setup cmp
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
                ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
                ["<Tab>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
                ["<C-c>"] = cmp.mapping.abort(),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "path" },
                { name = "buffer" },
                { name = "nvim_lsp_signature_help" }
            }),
            formatting = {
                format = require("lspkind").cmp_format({
                    mode = "symbol",
                }),
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
        })
    end,
}
