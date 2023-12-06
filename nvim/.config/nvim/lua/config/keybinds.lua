local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Change window more easily
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize splits
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Change buffers
map("n", "<S-l>", ":bn<CR>", opts)
map("n", "<S-h>", ":bp<CR>", opts)
map("n", "<C-d>", ":bd<CR>", opts)

-- Resize buffers
map("n", "<C-S-l>", ":BufferLineMoveNext<CR>", opts)
map("n", "<C-S-h>", ":BufferLineMovePrev<CR>", opts)

-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move text up and down in visual mode
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-h>", ":m '<-2<CR>gv=gv", opts)

-- Lazy.nvim
map("n", "<leader>ll", ":Lazy<CR>", opts)

-- Telescope
map("n", "<leader>t", ":Telescope<CR>", opts)
map("n", "<leader>,", ":Telescope quickfix<CR>", opts)
map("n", "<leader>ft", ":Telescope current_buffer_fuzzy_find<CR>", opts)
map("n", "<leader>fa", ":Telescope live_grep<CR>", opts)
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>o", ":lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>", opts)

-- Lsp
map("n", "<leader>K", ":lua vim.lsp.buf.definition()<CR>", opts)

-- NvimTree
map("n", "\\", ":NvimTreeFindFile<CR>", opts)
map("n", "<C-b>", ":NvimTreeToggle<CR>", opts)

map("n", "<leader>e", ":lua vim.diagnostic.open_float()<CR>", opts)
