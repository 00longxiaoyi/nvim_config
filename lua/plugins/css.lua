-- 这是为 LazyVim 配置 CSS LSP 的文件
return {
  "neovim/nvim-lspconfig",
  -- 在编辑 .css、.less 或 .scss 文件时加载
  ft = { "css", "scss", "less" },
  opts = {
    servers = {
      -- 配置 CSS 语言服务器 (cssls)
      cssls = {},
      -- 如果你也使用 PostCSS，可以额外配置它
      -- postcss = {},
    },
  },
}
