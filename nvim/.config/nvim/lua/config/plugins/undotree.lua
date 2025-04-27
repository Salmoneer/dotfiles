return {
    "mbbill/undotree",
    lazy = false,
    config = function()
        vim.g["undotree_WindowLayout"] = 2
        vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>:UndotreeFocus<CR>", { silent = true })
    end,
}
