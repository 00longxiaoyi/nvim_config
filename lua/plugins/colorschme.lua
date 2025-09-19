-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "storm", -- 你可以用 "night" / "storm" / "moon" / "day"
      transparent = true, -- ✅ 关键设置：开启透明
      terminal_colors = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    })
    vim.cmd([[colorscheme tokyonight]])
  end,
}
