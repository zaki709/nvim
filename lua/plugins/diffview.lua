return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  keys = {
    { "<leader>dfo", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
    { "<leader>dfc", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
  },
  config = function()
    require("diffview").setup({
      diff_binaries = false, -- Show binary files in diff views.
      enhanced_diff_hl = true, -- See ':h diffview-config-enhanced_diff_hl'
      use_icons = true, -- Requires nvim-web-devicons
      icons = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "󰜌",
      },
      signs = {
        fold_closed = "",
        fold_open = "",
        done = "✓",
      },
    })
  end,
}
