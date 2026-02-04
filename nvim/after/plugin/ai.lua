require("llm").setup({
    url = "http://localhost:11434/api/chat",
    -- model = "mistral:7b",
    -- model = "qwen3:4b",
    model = "ministral-3:8b",
    api_type = "ollama",
    fetch_key = "None",
    temperature = 0.3,
    top_p = 0.7,

    prompt = "antworte in deutsch und kurz",

    style = "right",

    prefix = {
        user = { text = "😃 ", hl = "Title" },
        assistant = { text = "  ", hl = "Added" },
    },

    save_session = true,
    max_history = 15,
    max_history_name_length = 20,

    chat_ui_opts = {
        input = {
            split = {
                relative = "win",
                position = {
                    row = "50%",
                    col = "50%",
                },
                border = {
                    text = {
                        top_align = "center",
                    },
                },
                win_options = {
                    winblend = 0,
                    winhighlight = "Normal:String,FloatBorder:LlmYellowLight,FloatTitle:LlmYellowNormal",
                },
                size = { height = "30%", width = "80%" },
            },
        },
        output = {
            split = {
                size = "40%",
            },
        },
        history = {
            split = {
                -- Default: true.
                -- If the window flickers when the cursor moves on macOS, you can set enable_fzf_focus_print = false.
                enable_fzf_focus_print = true,
                size = "60%",
            },
        },
        models = {
            split = {
                relative = "win",
                size = { height = "30%", width = "60%" },
            },
        },
    },

    keys = {
        -- The keyboard mapping for the input window.
        ["Input:Submit"]      = { mode = "n", key = "<cr>" },
        ["Input:Cancel"]      = { mode = { "n", "i" }, key = "<C-c>" },
        ["Input:Resend"]      = { mode = { "n", "i" }, key = "<C-r>" },

        -- only works when "save_session = true"
        ["Input:HistoryNext"] = { mode = { "n", "i" }, key = "<C-j>" },
        ["Input:HistoryPrev"] = { mode = { "n", "i" }, key = "<C-k>" },

        -- The keyboard mapping for the output window in "split" style.
        ["Output:Ask"]        = { mode = "n", key = "i" },
        ["Output:Cancel"]     = { mode = "n", key = "<C-c>" },
        ["Output:Resend"]     = { mode = "n", key = "<C-r>" },

        -- The keyboard mapping for the output and input windows in "float" style.
        ["Session:Toggle"]    = { mode = "n", key = "<leader>ac" },
        ["Session:Close"]     = { mode = "n", key = { "<esc>", "Q" } },

        -- Scroll
        ["PageUp"]            = { mode = { "i", "n" }, key = "<C-b>" },
        ["PageDown"]          = { mode = { "i", "n" }, key = "<C-f>" },
        ["HalfPageUp"]        = { mode = { "i", "n" }, key = "<C-u>" },
        ["HalfPageDown"]      = { mode = { "i", "n" }, key = "<C-d>" },
        ["JumpToTop"]         = { mode = "n", key = "gg" },
        ["JumpToBottom"]      = { mode = "n", key = "G" },
    },
})
