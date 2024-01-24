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
    swapfile = false,
    undofile = true,
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    -- Misc
    updatetime = 300,
    fileencoding = "utf-8",
    clipboard = "unnamedplus",
    mouse = "a",
    wrap = true,
    showmode = false,
    completeopt = { "menuone", "noselect" },
    termguicolors = true,
    hlsearch = false,
    incsearch = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.g.gutentags_cache_dir = vim.fn.expand("~/.cache/nvim/tags/")
