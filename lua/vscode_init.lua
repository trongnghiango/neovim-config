-- ======================================================
--  CHẠY TRONG VS CODE -> SIÊU GỌN NHẸ
-- ======================================================
local map = vim.keymap.set
local opts = { noremap = true, silent = true, desc = "VSCode specific" }

map('n', '<leader>ff', '<Cmd>call VSCodeNotify("workbench.action.quickOpen")<CR>', opts)
--map('n', '<leader>e', '<Cmd>call VSCodeNotify("workbench.action.toggleSidebarVisibility")<CR>', opts)
map('n', '<leader>e', '<Cmd>call VSCodeNotify("workbench.files.action.focusFilesExplorer")<CR>', { desc = "Focus File [E]xplorer" })
map('n', '<leader>ca', '<Cmd>call VSCodeNotify("editor.action.quickFix")<CR>', opts)
map('n', 'gd', '<Cmd>call VSCodeNotify("editor.action.revealDefinition")<CR>', opts)


--
-- Vô hiệu hóa Ctrl-B trong Normal mode
vim.keymap.set('n', '<C-b>', '<nop>', { noremap = true, silent = true, desc = "Disabled for VSCode/Other Bindings" })

vim.notify("Neovim for VSCode loaded! 🚀", vim.log.levels.INFO)
