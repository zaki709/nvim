-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set line numbers
vim.opt.number = true
vim.opt.relativenumber = false

-- Use UTF-8 for Japanese Chat with Copilot
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- jj to escape insert mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
