return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  event = { "InsertEnter", "CmdlineEnter" },
  -- @param opts cmp.ConfigSchema
  opts = function(_, opts)
    table.insert(opts.sources, { name = "emoji" })
    local luasnip = require("luasnip")
    local cmp = require("cmp")

    cmp.setup({

      -- ... Your other configuration ...

      mapping = {

        -- ... Your other mappings ...
        ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            if luasnip.expandable() then
              luasnip.expand()
            else
              cmp.confirm({
                select = true,
              })
            end
          else
            fallback()
          end
        end),

        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.locally_jumpable(1) then
            luasnip.jump(1)
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),

        -- ... Your other mappings ...
      },

      -- ... Your other configuration ...
    })
  end,
}
