return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Enable transparent background
        transparent = true,

        -- Enable italics comments
        italic_comments = false,

        -- Replace all fillchars with ' ' for the ultimate clean look
        hide_fillchars = false,

        -- Modern borderless telescope theme - also applies to fzf-lua
        borderless_telescope = true,

        -- Set terminal colors used in `:terminal`
        terminal_colors = true,

        -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
        cache = false,

        theme = {
          variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
          saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
          -- Override a highlight group entirely using the color palette
          overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
            -- Ensure proper text colors for both modes
            return {
              Normal = { fg = colors.fg, bg = colors.bg },
              Comment = { fg = colors.grey, bg = "NONE", italic = true },
              ["@property"] = { fg = colors.magenta, bold = true },
            }
          end,

          -- Override a color entirely
          colors = {
            -- For a list of colors see `lua/cyberdream/colours.lua`
            -- Dark mode: white text on dark background
            -- Light mode: black text on light background
          },
        },

        -- Disable or enable colorscheme extensions
        extensions = {
          telescope = true,
          notify = true,
          mini = true,
          -- add other extensions here...
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
