require('nvim-treesitter').setup {
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

require('nvim-treesitter').install { 'rust', 'python', 'toml', 'gitcommit', 'lua', 'ini', 'markdown', 'latex' }

vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        if vim.bo.buftype ~= "" then
            return
        end

        pcall(vim.treesitter.start)
    end,
})
