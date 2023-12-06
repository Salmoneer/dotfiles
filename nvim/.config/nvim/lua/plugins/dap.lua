return {
    "rcarriga/nvim-dap-ui",
    opts = {},
    dependencies = {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            dap.adapters.codelldb = {
                name = "lldb",
                type = "server",
                port = "${port}",
                executable = {
                    command = "/usr/bin/lldb-vscode-14",
                    args = {"--port", "${port}"}
                }
            }

            dap.configurations.rust = {
                {
                    name = "Launch",
                    type = "lldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                    end,
                    cwd = "${workspaceFolder}",
                    stopOnEntry = false,
                },
            }
        end
    }
}
