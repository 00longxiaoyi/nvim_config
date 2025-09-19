-- 在你的 LazyVim 配置里（比如 lua/plugins/treesitter.lua）
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "tsx",
      "javascript",
      "typescript",
      "css",
      "html",
      "json",
    },
  },
}
