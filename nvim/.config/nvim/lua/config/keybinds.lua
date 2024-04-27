vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<ESC>", ":noh<CR>")

vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "\\", ":Oil<CR>")

vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
vim.keymap.set("x", "<leader>p", "\"_dP`[v`]=")
vim.keymap.set("n", "<leader>p", "p`[v`]=")
vim.keymap.set("n", "<leader>P", "P`[v`]=")
vim.keymap.set("n", "<leader>x", ":! chmod +x %<CR>")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<M-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>l", ":Lazy<CR>")

vim.keymap.set("n", "<leader>fa", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

vim.keymap.set("n", "<leader>t", ":Trouble<CR>")

-- LSP binds
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
-- Set in plugins/lsp.lua
-- vim.keymap.set("n", "<leader>,", require("actions-preview").code_actions)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end)
