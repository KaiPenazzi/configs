vim.pack.add({
    -- Telescope
    { src = "https://github.com/nvim-lua/plenary.nvim.git" },
    { src = "https://github.com/nvim-telescope/telescope.nvim.git" },

    -- Colorscheme
    { src = "https://github.com/catppuccin/nvim.git" },

    -- Treesitter
    { src = "https://github.com/nvim-treesitter/nvim-treesitter.git",    build = ":TSUpdate" },

    -- LSP + Completion
    { src = "https://github.com/williamboman/mason.nvim.git" },
    { src = "https://github.com/williamboman/mason-lspconfig.nvim.git" },
    { src = "https://github.com/neovim/nvim-lspconfig.git" },
    { src = "https://github.com/hrsh7th/nvim-cmp.git" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp.git" },

    -- DAP
    { src = "https://github.com/mfussenegger/nvim-dap.git" },
    { src = "https://github.com/theHamsta/nvim-dap-virtual-text.git" },
    { src = "https://github.com/rcarriga/nvim-dap-ui.git" },
    { src = "https://github.com/nvim-neotest/nvim-nio.git" },
    { src = "https://github.com/mfussenegger/nvim-dap-python.git" },

    -- Git
    { src = "https://github.com/tpope/vim-fugitive.git" },

    -- UI / Misc
    { src = "https://github.com/Aasim-A/scrollEOF.nvim.git" },
    { src = "https://github.com/lukas-reineke/indent-blankline.nvim.git" },
    { src = "https://github.com/lervag/vimtex.git" },
    { src = "https://github.com/windwp/nvim-ts-autotag.git" },
    { src = "https://github.com/windwp/nvim-autopairs.git" },
    { src = "https://github.com/zbirenbaum/copilot.lua.git" },
    { src = "https://github.com/mfussenegger/nvim-jdtls.git" },
    { src = "https://github.com/echasnovski/mini.nvim.git" },
    { src = "https://github.com/wakatime/vim-wakatime.git" },
    { src = "https://github.com/MunifTanjim/nui.nvim.git" },

    -- LLM (lazy via command)
    {
        src = "https://github.com/Kurama622/llm.nvim.git",
        cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },
    },
})
