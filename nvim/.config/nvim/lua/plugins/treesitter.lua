return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        "hiphish/rainbow-delimiters.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter"
        },
    },
}
