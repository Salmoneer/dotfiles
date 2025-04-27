return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "vimdoc", "vim", "lua", "c", "cpp", "rust", "zig", "bash", "fish", "python", "glsl", "markdown",
            },
            ignore_install = {},
            auto_install = true,

            sync_install = false,

            modules = {
                highlight = {
                    enable = true,
                },
                indent = {
                    enable = true
                },
            },
        })
    end,
}
