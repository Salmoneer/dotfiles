local opts = {
    number = true,
    relativenumber = true,
    signcolumn = "yes",
    numberwidth = 4,

    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 0,
    breakindent = true,
    smartindent = true,

    backup = false,
    writebackup = false,
    swapfile = false,
    undofile = true,
    undodir = vim.fn.stdpath("data") .. "/undodir",

    scrolloff = 4,
    clipboard = "unnamedplus",
    incsearch = true,
    termguicolors = true,

    winborder = "rounded",
}

for k, v in pairs(opts) do
    vim.o[k] = v
end
