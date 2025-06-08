require("core.lsp")

require("config.options")
require("config.keymaps")
require("config.autocmds")

require("core.lazy")


if vim.g.neovide then
  require 'core.neovide'
end
