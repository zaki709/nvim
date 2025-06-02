-- plugins.lua
return {
  {
    -- プラグイン本体
    "Almo7aya/openingh.nvim",

    -- コマンド発行時にロードする設定
    cmd = { "OpenInGHRepo", "OpenInGHFile", "OpenInGHFileLines" },

    opts = {
      vim.api.nvim_set_keymap("n", "<Leader>gr", "<Cmd>OpenInGHRepo<CR>", { silent = true, noremap = true }),
      vim.api.nvim_set_keymap("n", "<Leader>go", "<Cmd>OpenInGHFile<CR>", { silent = true, noremap = true }),
      vim.api.nvim_set_keymap("v", "<Leader>go", "<Cmd>OpenInGHFileLines<CR>", { silent = true, noremap = true }),
    },
    config = function() end,
  },
}
