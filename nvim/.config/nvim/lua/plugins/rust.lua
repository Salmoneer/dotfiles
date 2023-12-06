return {
    "simrat39/rust-tools.nvim",
    -- opts = function()
    --     local extension_path = '/mnt/c/Users/Cam/.vscode/extensions/vadimcn.vscode-lldb-1.6.7/'
    --     local codelldb_path = extension_path .. 'adapter/codelldb'
    --     local liblldb_path = extension_path .. 'lldb/lib/liblldb'
    --
    --     codelldb_path = extension_path .. "adapter\\codelldb.exe"
    --     liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
    --
    --     return {
    --         dap = {
    --             adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path)
    --         }
    --     }
    -- end
    config = function()
        local rt = require("rust-tools")

        rt.setup({
            dap = {
                adapter = {
                    command = "lldb-vscode-14"
                }
            },
            server = {
                on_attach = function(_, bufnr)
                    vim.keymap.set("n", "<leader>ha", ":lua require'rust-tools'.hover_actions.hover_actions()<CR>", { buffer = bufnr })
                    vim.keymap.set("n", "<leader>a" , ":lua require'rust-tools'.code_action_group.code_action_group()<CR>", { buffer = bufnr })
                end
            }
        })
    end
}
