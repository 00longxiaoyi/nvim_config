return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      -- 开启弹窗模式
      direction = "float",
      size = 20,
      open_mapping = [[<c-\>]], -- 绑定快捷键为 Ctrl + \
      hide_numbers = true,
      shade_terminals = true,
      float_opts = {
        border = "double", -- 边框样式：'single' | 'double' | 'shadow' | 'curved'
        winblend = 5, -- 透明度
      },
    },
  },
}
