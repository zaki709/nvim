return {
  "Almo7aya/openingh.nvim",
  -- Lazy load on command or keymap for faster startup
  cmd = { "OpenInGHRepo", "OpenInGHFile", "OpenInGHFileLines" },
  keys = {
    { "<Leader>gr", "<Cmd>OpenInGHRepo<CR>", desc = "Open repository in GitHub", silent = true, noremap = true },
    { "<Leader>go", "<Cmd>OpenInGHFile<CR>", mode = "n", desc = "Open file in GitHub", silent = true, noremap = true },
    { "<Leader>go", "<Cmd>OpenInGHFileLines<CR>", mode = "v", desc = "Open file lines in GitHub", silent = true, noremap = true },
  },
  config = function() end,
}
