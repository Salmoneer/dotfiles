local options = {
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

    scrolloff = 8,
    clipboard = "unnamedplus",
    incsearch = true,
    termguicolors = true,
}

for k, v in pairs(options) do
    vim.o[k] = v
end
