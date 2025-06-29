return {
  "norcalli/nvim-colorizer.lua",
  -- Only load when specific file types are opened for better startup performance
  ft = { "css", "html", "javascript", "lua", "vim", "yml", "yaml", "scss", "sass", "json", "tsx", "ts" },
  config = function()
    require("colorizer").setup({
      "yml",
      "yaml",
      "lua",
      "css",
      "javascript",
      "scss",
      "sass",
      "json",
    }, {
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = false, -- Disable "Name" codes for performance
      RRGGBBAA = true, -- #RRGGBBAA hex codes
      rgb_fn = true, -- CSS rgb() and rgba() functions
      hsl_fn = true, -- CSS hsl() and hsla() functions
      css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      mode = "background", -- Set the display mode
    })
  end,
}
