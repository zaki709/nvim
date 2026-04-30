-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Open diagnostic float
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Open diagnostic float" })

-- Copy diagnostic messages to clipboard
vim.keymap.set("n", "gL", function()
  local diagnostics = vim.diagnostic.get(0, { lnum = vim.api.nvim_win_get_cursor(0)[1] - 1 })
  if #diagnostics == 0 then
    vim.notify("No diagnostics on current line", vim.log.levels.WARN)
    return
  end
  local messages = {}
  for _, d in ipairs(diagnostics) do
    table.insert(messages, d.message)
  end
  local text = table.concat(messages, "\n")
  vim.fn.setreg("+", text)
  vim.notify("Copied diagnostic to clipboard", vim.log.levels.INFO)
end, { desc = "Copy diagnostic to clipboard" })

-- Toggle between light and dark mode for cyberdream theme
vim.keymap.set("n", "<leader>ct", ":CyberdreamToggleMode<CR>", { desc = "Toggle cyberdream light/dark mode" })

-- Create autocmd to hook into the toggle event
vim.api.nvim_create_autocmd("User", {
  pattern = "CyberdreamToggleMode",
  callback = function(event)
    print("Switched to " .. event.data .. " mode!")
  end,
})
