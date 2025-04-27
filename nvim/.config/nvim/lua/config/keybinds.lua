vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>", "<nop>")

vim.keymap.set("n", "<esc>", ":noh<CR><C-l>")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<C-Up>", ":resize +1<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -1<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +1<CR>")
