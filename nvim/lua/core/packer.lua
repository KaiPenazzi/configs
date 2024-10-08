-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        "catppuccin/nvim",
        as = "catppuccin",
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- use {
    -- "folke/which-key.nvim",
    -- config = function()
    -- vim.o.timeout = true
    -- vim.o.timeoutlen = 300
    -- require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    -- }
    -- end
    -- }

    use { 'mfussenegger/nvim-dap' }

    use { 'theHamsta/nvim-dap-virtual-text' }

    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }

    use { 'mfussenegger/nvim-jdtls' }

    use("tpope/vim-fugitive")

    use('Aasim-A/scrollEOF.nvim')

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use { 'lervag/vimtex' }

    use {
        'mfussenegger/nvim-dap-python',
        requires = { 'mfussenegger/nvim-dap' }
    }
    use "lukas-reineke/indent-blankline.nvim"
end)
