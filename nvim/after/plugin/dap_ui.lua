local dapui = require("dapui")

local config = {
    controls = {
        element = "repl",
        enabled = true,
        icons = {
            -- disconnect = "",
            pause = "⏸",
            play = "▶",
            run_last = "",
            step_back = "🡐",
            step_into = "🡓",
            step_out = "🡑",
            step_over = "🡒",
            terminate = "X"
        }
    },
    element_mappings = {},
    expand_lines = true,
    floating = {
        border = "single",
        mappings = {
            close = { "q", "<Esc>" }
        }
    },
    force_buffers = true,
    icons = {
        collapsed = "",
        current_frame = "",
        expanded = ""
    },
    layouts = { {
        elements = { {
            id = "repl",
            size = 0.4
        }, {
            id = "console",
            size = 0.6
        } },
        position = "bottom",
        size = 20
    } },
    mappings = {
        edit = "e",
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        repl = "r",
        toggle = "t"
    },
    render = {
        indent = 1,
        max_value_lines = 100
    }
}


dapui.setup(config)

local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end
