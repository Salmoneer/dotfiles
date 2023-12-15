local map = vim.keymap.set

-- Leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Change window more easily
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Resize splits
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

-- Change buffers
map("n", "<S-l>", ":BufferLineCycleNext<CR>")
map("n", "<S-h>", ":BufferLineCyclePrev<CR>")
map("n", "<C-q>", ":bd<CR>")

-- Move buffers
map("n", "<C-A-l>", ":BufferLineMoveNext<CR>")
map("n", "<C-A-h>", ":BufferLineMovePrev<CR>")

-- Variations of normal actions
map("n", "<leader>u", ":UndotreeToggle<CR>")
map("x", "<leader>p", [["_dP]])

-- Make executable
map("n", "<leader>x", ":! chmod +x %<CR>")

-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move text up and down
map("n", "<M-j>", ":m .+1<CR>==")
map("n", "<M-k>", ":m .-2<CR>==")
-- map("i", "<M-j>", "<ESC>:m .+1<CR>==gi")
-- map("i", "<M-k>", "<ESC>:m .-2<CR>==gi")
map("v", "<M-j>", ":m '>+1<CR>gv=gv")
map("v", "<M-k>", ":m '<-2<CR>gv=gv")


-- Plugins
-- Lazy.nvim
map("n", "<leader>ll", ":Lazy<CR>")

-- Telescope
map("n", "<leader>t", ":Telescope<CR>")
map("n", "<leader>ft", ":Telescope current_buffer_fuzzy_find<CR>")
map("n", "<leader>fa", ":Telescope live_grep<CR>")
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope git_files<CR>")
map("n", "<leader>o", ":lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>")

-- Lsp
map("n", "<leader>e", ":lua vim.diagnostic.open_float()<CR>")
map("n", "<leader>K", ":lua vim.lsp.buf.definition()<CR>")
map("n", "<leader>F", ":lua vim.lsp.buf.format()<CR>")
map("n", "<leader>,", ":lua vim.lsp.buf.code_action()<CR>")
map("n", "<leader>.", ":lua vim.lsp.buf.hover()<CR>")

-- NvimTree
map("n", "\\", ":NvimTreeFindFile<CR>")
map("n", "<C-b>", ":NvimTreeToggle<CR>")

-- Double typing speed
map("n", "<leader>fml", ":CellularAutomaton make_it_rain<CR>")
