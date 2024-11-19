return {
  -- amongst your other plugins
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    opts = {
      direction = "float",
      open_mapping = [[<c-\>]],
    },
  },
}
