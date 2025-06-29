return {
  "shellRaining/hlchunk.nvim",
  -- Load only after buffer is read for better startup performance
  event = "BufReadPost",
  config = function()
    require("hlchunk").setup({
      chunk = {
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "╭",
          left_bottom = "╰",
          right_arrow = ">",
        },
        style = "#806d9c",
      },
    })
  end,
}
