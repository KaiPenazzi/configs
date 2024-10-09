local lsp_zero = require('lsp-zero')

require('lspconfig').rust_analyzer.setup({})
require('lspconfig').ltex.setup({
    settings = {
        ltex = {
            language = "de",
        },
    },
})

local cmp_action = lsp_zero.cmp_action()
local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
    },
    preselect = 'none',
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
        ['<C-z>'] = cmp.mapping.confirm(),
    }),
})

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
    lsp_zero.buffer_autoformat()
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp_zero.default_setup,
    },
})
