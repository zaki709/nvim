return {
  -- テーマ切り替え機能
  {
    "LazyVim/LazyVim",
    config = function()
      -- テーマ切り替えコマンドを作成
      vim.api.nvim_create_user_command("SwitchTheme", function(opts)
        local theme = opts.args
        if theme == "" then
          local themes = {
            "cyberdream",
            "gruvbox", 
            "tokyonight",
            "tokyonight-night",
            "tokyonight-storm",
            "tokyonight-day",
            "catppuccin",
            "catppuccin-latte",
            "catppuccin-frappe", 
            "catppuccin-macchiato",
            "catppuccin-mocha",
          }
          
          vim.ui.select(themes, {
            prompt = "カラーテーマを選択:",
          }, function(choice)
            if choice then
              vim.cmd.colorscheme(choice)
              vim.notify("テーマを " .. choice .. " に変更しました", vim.log.levels.INFO)
            end
          end)
        else
          vim.cmd.colorscheme(theme)
          vim.notify("テーマを " .. theme .. " に変更しました", vim.log.levels.INFO)
        end
      end, {
        nargs = "?",
        complete = function()
          return {
            "cyberdream",
            "gruvbox",
            "tokyonight", 
            "tokyonight-night",
            "tokyonight-storm",
            "tokyonight-day",
            "catppuccin",
            "catppuccin-latte",
            "catppuccin-frappe",
            "catppuccin-macchiato", 
            "catppuccin-mocha",
          }
        end,
        desc = "テーマを切り替え",
      })
    end,
    keys = {
      -- テーマ切り替えキーマップ
      {
        "<leader>ut",
        function()
          local themes = {
            "cyberdream",
            "gruvbox",
            "tokyonight",
            "tokyonight-night",
            "tokyonight-storm",
            "tokyonight-day",
            "catppuccin",
            "catppuccin-latte",
            "catppuccin-frappe",
            "catppuccin-macchiato",
            "catppuccin-mocha",
          }
          
          vim.ui.select(themes, {
            prompt = "カラーテーマを選択:",
          }, function(choice)
            if choice then
              vim.cmd.colorscheme(choice)
              vim.notify("テーマを " .. choice .. " に変更しました", vim.log.levels.INFO)
            end
          end)
        end,
        desc = "テーマ切り替え",
      },
      -- 特定テーマへの直接切り替え
      {
        "<leader>u1",
        function() vim.cmd.colorscheme("cyberdream") end,
        desc = "Cyberdream テーマ",
      },
      {
        "<leader>u2", 
        function() vim.cmd.colorscheme("gruvbox") end,
        desc = "Gruvbox テーマ",
      },
      {
        "<leader>u3",
        function() vim.cmd.colorscheme("tokyonight") end,
        desc = "Tokyonight テーマ",
      },
      {
        "<leader>u4",
        function() vim.cmd.colorscheme("catppuccin") end,
        desc = "Catppuccin テーマ",
      },
    },
  },
}