return {
    {
        "folke/lazydev.nvim",
        dependencies = { "saghen/blink.cmp" },
        lazy = false,
        ft = "lua",
        opts = {},
    },
    {
        "saghen/blink.cmp",
        opts = {
            sources = {
                default = { "lazydev" },
                providers = {
                    lazydev = {
                        name = "LazyDev",
                        module = "lazydev.integrations.blink",
                        -- make lazydev completions top priority (see `:h blink.cmp`)
                        score_offset = 100,
                    },
                },
            },
        },
        opts_extend = { "sources.default", "sources.providers" },
    },
}
