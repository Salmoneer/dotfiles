local logo = [[
                                             
      ████ ██████           █████      ██
     ███████████             █████ 
     █████████ ███████████████████ ███   ███████████
    █████████  ███    █████████████ █████ ██████████████
   █████████ ██████████ █████████ █████ █████ ████ █████
 ███████████ ███    ███ █████████ █████ █████ ████ █████
██████  █████████████████████ ████ █████ █████ ████ ██████
]]


return {
    "goolord/alpha-nvim",
    opts = function()
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = vim.split(logo, "\n")
        dashboard.section.buttons.val = {
            dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
            dashboard.button("a", "󰷾 " .. " Find text", ":Telescope live_grep <CR>"),
            dashboard.button("b", " " .. " File browser", ":NvimTreeOpen <CR>"),
            dashboard.button("r", "󰄉 " .. " Recent files", ":Telescope oldfiles <CR>"),
            dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
            dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
            dashboard.button("q", " " .. " Quit", ":qa<CR>"),
        }

        for _, button in ipairs(dashboard.section.buttons.val) do
            button.opts.hl = "AlphaButtons"
            button.opts.hl_shortcut = "AlphaShortcut"
        end

        dashboard.section.header.opts.hl = "AlphaHeader"
        dashboard.section.buttons.opts.hl = "AlphaButtons"
        dashboard.section.footer.opts.hl = "AlphaFooter"
        dashboard.opts.layout[1].val = 8
        dashboard.section.footer.val = require("alpha.fortune")()
        return dashboard
    end,
    config = function(_, dashboard)
        require("alpha").setup(dashboard.opts)
        vim.api.nvim_create_autocmd("User", {
            pattern = "LazyVimStarted",
            callback = function()
                local stats = require("lazy").stats()
                local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
                local datetime = os.date(" %Y-%m-%d   %H:%M:%S")
                dashboard.section.header.val = vim.split(logo .. "\n\n      ⚡Loaded " .. stats.loaded .. " plugins in " .. ms .. "ms     " .. datetime, "\n")
                pcall(vim.cmd.AlphaRedraw)
            end,
        })
    end,
}
