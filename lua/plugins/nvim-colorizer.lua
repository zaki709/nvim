return {
  "norcalli/nvim-colorizer.lua",
  ft = { "css", "html", "javascript", "lua", "vim", "yml", "yaml" }, -- 必要に応じてファイルタイプを追加
  event = "BufReadPre",
  config = function()
    require("colorizer").setup({
      "yml",
      "yaml",
      "lua",
      "css",
      "javascript",
    }, {
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = true, -- "Name" codes like Blue
      RRGGBBAA = true, -- #RRGGBBAA hex codes
      rgb_fn = true, -- CSS rgb() and rgba() functions
      hsl_fn = true, -- CSS hsl() and hsla() functions
      css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      mode = "background", -- Set the display mode
    })
  end,
}
