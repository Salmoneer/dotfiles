return {
    "stevearc/oil.nvim",
    dependencies = { "echasnovski/mini.icons", opts = {} },
    lazy = false,
    ---@module "oil"
    ---@type oil.SetupOpts
    opts = {
        view_options = {
            show_hidden = true,
        },
    },
    config = function(_, opts)
        require("oil").setup(opts)
        vim.keymap.set("n", "-", ":Oil --float<CR>")
    end,
}
