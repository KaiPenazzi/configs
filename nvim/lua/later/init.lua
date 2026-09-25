local function lazy_require_on_vimenter(module, delay)
    vim.api.nvim_create_autocmd("VimEnter", {
        once = true,
        callback = function()
            vim.defer_fn(function() require(module) end, delay or 150)
        end,
    })
end
lazy_require_on_vimenter("later.ai", 150)
lazy_require_on_vimenter("later.dap", 150)
lazy_require_on_vimenter("later.dap_ui", 150)
lazy_require_on_vimenter("later.dapvirtualtext", 150)
lazy_require_on_vimenter("later.lsp", 150)
lazy_require_on_vimenter("later.vimtex", 150)
