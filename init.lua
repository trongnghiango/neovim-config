-- File: init.lua

-- =========================================================================
--  QUAN TRỌNG: Thêm thư mục 'lua' vào runtime path
-- =========================================================================
--vim.opt.rtp:prepend(vim.fn.stdpath('config'))
vim.opt.rtp:prepend("/home/ka/.config/neovim-minimal")


-- =========================================================================
--  Phần 1: Load những thứ CẦN THIẾT cho CẢ HAI môi trường
-- =========================================================================
require("config.options")
require("config.keymaps")
require("config.autocmds")


-- =========================================================================
--  Phần 2: PHÂN CHIA LOGIC theo môi trường
-- =========================================================================
if vim.g.vscode then
    require("vscode_init")
else
    -- ======================================================
    --  CHẠY TRONG NEOVIM ĐỘC LẬP -> FULL OPTION
    -- ======================================================
    require("core.lsp")
    require("core.lazy")

    if vim.g.neovide then
      require 'core.neovide'
    end
end

