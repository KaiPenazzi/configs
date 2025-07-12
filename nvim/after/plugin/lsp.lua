require('lspconfig').rust_analyzer.setup({})

require('lspconfig').ltex.setup({
    filetypes = { "tex", "bib" },
    settings = {
        ltex = {
            language = "de",
        },
    },
})

require('lspconfig').clangd.setup({
    format = {
        tabSize = 2,
    }
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
    },
    preselect = 'none',
    mapping = cmp.mapping.preset.insert({

        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { 'i' }),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { 'i' }),

        ['<C-y>'] = cmp.mapping.confirm(),
    }),
})

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format({
            async = false,
            timeout_ms = 3000,
        })
    end,
})

require('mason').setup({})
require('mason-lspconfig').setup()

require('nvim-ts-autotag').setup()
require('nvim-autopairs').setup()
require('mini.surround').setup()

require('copilot').setup({
    suggestion = {
        enable = true,
        auto_trigger = false,
        eymap = {
            accept = "<C-l>",
        }
    }
})
