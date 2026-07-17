local function lazy_require_on_vimenter(module, delay)
    vim.api.nvim_create_autocmd("VimEnter", {
        once = true,
        callback = function()
            vim.defer_fn(function() require(module) end, delay or 150)
        end,
    })
end
lazy_require_on_vimenter("lazy.ai", 150)
lazy_require_on_vimenter("lazy.lsp", 150)
lazy_require_on_vimenter("lazy.dap", 150)
lazy_require_on_vimenter("lazy.dap_ui", 150)
lazy_require_on_vimenter("lazy.vimtex", 150)
