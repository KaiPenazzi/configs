local function bootstrap_pckr()
    local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

    if not (vim.uv or vim.loop).fs_stat(pckr_path) then
        vim.fn.system({
            'git',
            'clone',
            "--filter=blob:none",
            'https://github.com/lewis6991/pckr.nvim',
            pckr_path
        })
    end

    vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add {
    { 'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
    },

    "catppuccin/nvim",

    { 'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    },

    {
        'williamboman/mason.nvim',
        requires = {
            { 'williamboman/mason-lspconfig.nvim' },
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
        }
    },

    { 'mfussenegger/nvim-dap',
        requires = {
            'theHamsta/nvim-dap-virtual-text',
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
        },
    },

    "tpope/vim-fugitive",

    'Aasim-A/scrollEOF.nvim',

    'mfussenegger/nvim-dap-python',

    "lukas-reineke/indent-blankline.nvim",

    "lervag/vimtex",

    "windwp/nvim-ts-autotag",

    "windwp/nvim-autopairs",

    "zbirenbaum/copilot.lua",

    "mfussenegger/nvim-jdtls",

    "echasnovski/mini.nvim",

    'wakatime/vim-wakatime',

    {
        'Kurama622/llm.nvim',
        cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" }
    },

    'MunifTanjim/nui.nvim'
}
