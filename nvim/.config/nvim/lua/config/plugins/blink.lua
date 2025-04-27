return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*",
    lazy = false,
    ---@module "blink.cmp"
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "none",

            ["<C-e>"] = { "show", "hide" },
            ["<C-h>"] = { "show_documentation", "hide_documentation" },
            ["<C-l>"] = { "show_signature", "hide_signature" },

            ["<C-f>"] = { "scroll_documentation_down" },
            ["<C-b>"] = { "scroll_documentation_up" },

            ["<C-j>"] = { function(cmp) cmp.select_next({ auto_insert = false }) end },
            ["<C-k>"] = { function(cmp) cmp.select_prev({ auto_insert = false }) end },

            ["<C-y>"] = { "select_and_accept" },
        },

        appearance = {
            -- "mono" (default) for "Nerd Font Mono" or "normal" for "Nerd Font"
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = "mono"
        },

        completion = { documentation = { auto_show = false } },

        signature = { enabled = true },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" }
}
