return {
  "mogulla3/copy-file-path.nvim",
  version = "*",
  opts = {
    vim.keymap.set("n", "<Leader>cp", "<Cmd>CopyFilePath<CR>", { noremap = true, silent = true }),
  },
  config = function() end,
}
