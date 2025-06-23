-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle between light and dark mode for cyberdream theme
vim.keymap.set("n", "<leader>ct", ":CyberdreamToggleMode<CR>", { desc = "Toggle cyberdream light/dark mode" })

-- Create autocmd to hook into the toggle event
vim.api.nvim_create_autocmd("User", {
  pattern = "CyberdreamToggleMode",
  callback = function(event)
    print("Switched to " .. event.data .. " mode!")
  end,
})
