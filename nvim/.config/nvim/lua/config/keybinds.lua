-- leaders
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", " ", "<nop>")

-- hide highlights
vim.keymap.set("n", "<esc>", ":noh<CR>")

-- stay in visual mode while indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- resize window
vim.keymap.set("n", "<C-Up>", ":resize +1<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -1<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +1<CR>")

-- open plugin menus
vim.keymap.set("n", "<leader>l", ":Lazy<CR>")
vim.keymap.set("n", "<leader>m", ":Mason<CR>")

-- open plugins
vim.keymap.set("n", "\\", ":Oil<CR>")
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fa", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

-- git
vim.keymap.set("n", "<leader>gsh", ":Gitsigns stage_hunk<CR>")
vim.keymap.set("n", "<leader>gsf", ":Gitsigns stage_buffer<CR>")

-- lsp
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end)
