return {
  -- amongst your other plugins
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    -- Lazy load on key mapping or command for faster startup
    keys = "<c-\\>",
    cmd = { "ToggleTerm", "TermExec" },
    config = true,
    opts = {
      direction = "float",
      open_mapping = [[<c-\>]],
    },
  },
}
