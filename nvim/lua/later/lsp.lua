vim.lsp.config['rust_analyzer'] = {
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                targetDir = ".lsp/rust-analyzer",
            }
        }
    }
}

vim.lsp.enable('rust_analyzer')
vim.lsp.enable('ty')
vim.lsp.enable('ruff')


vim.lsp.config['hls'] = {
    cmd = { 'haskell-language-server-wrapper', '--lsp' },
}
vim.lsp.enable('hls')

require('blink.cmp').setup({
    keymap = {
        preset = 'default',
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<C-y>'] = { 'accept', 'fallback' },
    },

    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    completion = {
        documentation = {
            auto_show = true,
            -- auto_show_delay_ms = 300,
        },
    },

    signature = { enabled = true },
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
