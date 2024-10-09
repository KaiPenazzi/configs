vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>nh", ':noh<CR>')

vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)
--vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
--vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
    require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)

vim.keymap.set({ 'n', 'v' }, '<leader>dt', function()
    require("dapui").toggle()
end)

--jdtls debug test
--vim.keymap.set('n', '<leader>dtc', function() require('jdtls').test_class() end)
--vim.keymap.set('n', '<leader>dtm', function() require('jdtls').test_nearest_method() end)

--vim.keymap.set('n', '<leader>gt', ':! ./gradlew test<CR>')
--vim.keymap.set('n', '<leader>gr', ':! ./gradlew run<CR>')

vim.keymap.set('n', '<leader>dtc', function() require('dap-python').test_class() end)
vim.keymap.set('n', '<leader>dtm', function() require('dap-python').test_method() end)
vim.keymap.set('n', '<leader>e#', ':e #<CR>')
vim.keymap.set('n', '<leader>lr', ':LspRestart<CR>')
