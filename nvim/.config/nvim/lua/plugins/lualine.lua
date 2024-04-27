return {
    "nvim-lualine/lualine.nvim",
    opts = {
        options = {
            icons_enabled = false,
            theme = "auto",
            component_separators = { left = "", right = "" },
            section_separators   = { left = "", right = "" },
            disabled_filetypes = {
              statusline = {},
              winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
              statusline = 10,
              tabline = 10,
              winbar = 10,
            }
        },

        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff",
                {
                    "diagnostics",
                    symbols = {
                        error = " ",
                        warn  = " ",
                        info  = " ",
                        hint  = " ",
                    }
                },
            },
            lualine_c = { "filename" },
            lualine_x = { "encoding", "fileformat", "filetype" },
            lualine_y = { "progress" },
            lualine_z = { "location" }
        },
    },
}
