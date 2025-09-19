-- ~/.config/nvim/lua/plugins/cmp.lua
return {
  "hrsh7th/nvim-cmp",
  enabled = true,
  event = "InsertEnter",
  dependencies = {
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      -- 定义补全源
      sources = cmp.config.sources({
        -- **将 "luasnip" 作为补全源**
        { name = "luasnip" },
        -- LSP 补全源，通常放在第一位
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer" },
      }),

      -- 键位映射
      mapping = cmp.mapping.preset.insert({
        -- 确认补全，如果 Luasnip 有可展开的片段，就展开它
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        -- 按 Tab 键可以在片段之间跳转
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      }),

      -- 统一窗口样式和位置
      window = {
        completion = {
          -- 将边框设置为 false
          border = false,
          -- 高亮设置
          winhighlight = "Normal:Pmenu,CursorLine:PmenuSel",
        },
        documentation = {
          -- 将边框设置为 false
          border = false,
          -- 设置窗口的最大宽度
          maxwidth = 50,
          -- 高亮设置
          winhighlight = "Normal:Pmenu,CursorLine:PmenuSel",
        },
      },
    })
  end,
}
