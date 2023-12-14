return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            themable = true,
            separator_style = "thin",
            offsets = { { filetype = "NvimTree", text = "", padding = 0 } },
        }
    },
}
