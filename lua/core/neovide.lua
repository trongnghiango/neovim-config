
vim.opt.guifont = { 'Iosevka', ':h14:sb' }
vim.g.neovide_scale_factor = 1.0 --.7

-- Helper function for transparency formatting
local alpha = function()
  return string.format('%x', math.floor(255 * 0.8))
end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_opacity = 0.8
vim.g.transparency = 0.9
vim.g.neovide_background_color = alpha()
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_refresh_rate = 45
vim.keymap.set({ 'n', 'v' }, '<C-+>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>')
vim.keymap.set({ 'n', 'v' }, '<C-->', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>')
vim.keymap.set({ 'n', 'v' }, '<C-0>', ':lua vim.g.neovide_scale_factor = 1<CR>')
