return {
    "williamboman/mason.nvim",
    lazy = false,
    build = ":MasonUpdate",
    opts = {},
    config = function(_, opts)
        require("mason").setup(opts)
        vim.keymap.set("n", "<leader>cm", ":Mason<CR>")
    end
}
