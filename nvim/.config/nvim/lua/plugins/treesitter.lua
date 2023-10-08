return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "https://gitlab.com/HiPhish/rainbow-delimiters.nvim",
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = "all",
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })

        local rainbow_delimiters = require('rainbow-delimiters')

        vim.g.rainbow_delimiters = {
            strategy = {
                [''] = rainbow_delimiters.strategy['global'],
                vim = rainbow_delimiters.strategy['local'],
            },
            query = {
                [''] = 'rainbow-delimiters',
                lua = 'rainbow-blocks',
            },
            highlight = {
                'RainbowDelimiterRed',
                'RainbowDelimiterYellow',
                'RainbowDelimiterBlue',
                'RainbowDelimiterOrange',
                'RainbowDelimiterGreen',
                'RainbowDelimiterViolet',
                'RainbowDelimiterCyan',
            },
        }
    end,
}
