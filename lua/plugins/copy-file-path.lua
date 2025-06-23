return {
  "mogulla3/copy-file-path.nvim",
  version = "*",
  -- Lazy load on keymap for faster startup
  keys = {
    { "<Leader>cp", "<Cmd>CopyFilePath<CR>", desc = "Copy file path", noremap = true, silent = true },
  },
  config = function() end,
}
