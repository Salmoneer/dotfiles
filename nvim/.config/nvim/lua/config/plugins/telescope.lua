return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        },
    },
    opts = {
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            },
        },
    },
    config = function(_, opts)
        require("telescope").setup(opts)
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { silent = true })
        vim.keymap.set("n", "<leader>fa", builtin.live_grep, { silent = true })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { silent = true })
        require('telescope').load_extension('fzf')
    end,
}
