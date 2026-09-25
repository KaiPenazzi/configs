require('copilot').setup({
    suggestion = {
        enabled = true,
        auto_trigger = false,
        hide_during_completion = true,
        debounce = 15,
        trigger_on_accept = true,
        keymap = {
            accept = false,
            accept_word = false,
            accept_line = "<C-l>",
            next = false,
            prev = false,
            dismiss = "<C-]>",
            toggle_auto_trigger = false,
        },
    },
})

require("CopilotChat").setup({
    model = 'gpt-5-mini',
    mappings = {
        close = {
            normal = 'q',
            insert = false,
            callback = function()
                require('CopilotChat').close()
            end,
        },
    },
})

require('render-markdown').setup({
    file_types = { 'markdown', 'copilot-chat' },
})
