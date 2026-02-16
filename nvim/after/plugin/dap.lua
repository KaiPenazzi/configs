local dap = require('dap')

dap.adapters.codelldb = {
    type = 'server',
    port = "${port}",
    executable = {
        -- CHANGE THIS to your path!
        command = '/usr/bin/codelldb',
        args = { "--port", "${port}" },

        -- On windows you may have to uncomment this:
        -- detached = false,
    }
}

dap.configurations.rust = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            local workspace_basename =
            '${workspaceFolderBasename}' -- Hier wird der Basisname des Arbeitsverzeichnisses abgerufen
            return vim.fn.getcwd() .. '/target/debug/' .. workspace_basename
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    },
}

require("dap-python").setup("python3")

table.insert(require('dap').configurations.python, {
    type = 'debugpy',
    request = 'launch',
    name = 'Run OCPPproxy',
    program = '${workspaceFolder}/chargectrl/ocppproxy/src/ocppproxy/main.py',
    cwd = '${workspaceFolder}',
    console = 'integratedTerminal',
    args = {
        "-d",
        "chargectrl/ocppproxy/"
    }
})
