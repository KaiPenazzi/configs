local cmp = require('cmp')

vim.lsp.enable('ty')
vim.lsp.enable('ruff')

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
