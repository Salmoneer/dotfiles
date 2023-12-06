return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
        "nvim-telescope/telescope-media-files.nvim",
        "nvim-telescope/telescope-dap.nvim"
    },
    config = function()
        require("telescope").setup({
            extensions = {
                media_files = {
                    filetypes = {"png", "webp", "jpg", "jpeg", "svg", "mp4", "webm"},
                    find_cmd = "rg",
                },
            },
        })
        require("telescope").load_extension("media_files")
        require("telescope").load_extension("dap")
    end,
}
