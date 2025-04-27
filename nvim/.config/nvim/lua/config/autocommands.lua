local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.vert", "*.frag" },
    callback = function(args)
        vim.cmd("set filetype=glsl")
    end,
})
