local options = {
    -- Number margin
    number = true,
    relativenumber = true,
    signcolumn = "yes",
    numberwidth = 4,
    -- Indent
    tabstop = 4,
    softtabstop = 0,
    expandtab = true,
    shiftwidth = 4,
    smarttab = true,
    smartindent = true,
    -- Show extra lines when scrolling
    scrolloff = 8,
    sidescrolloff = 8,
    -- Swapfiles/backup
    backup = false,
    writebackup = false,
    swapfile = true,
    updatetime = 300,
    -- Misc
    fileencoding = "utf-8",
    clipboard = "unnamedplus",
    mouse = "a",
    wrap = false,
    undofile = true,
    showmode = false,
    --cmdheight = 2,
    completeopt = { "menuone", "noselect" },
    termguicolors = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
