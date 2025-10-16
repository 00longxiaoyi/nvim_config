return {
  -- ... 其他插件 ...

  -- 统一的 LSP 配置块 (应只出现一次)
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "vue-language-server",
        "typescript-language-server",
        "vtsls",
        "css-lsp",
      })
    end,
  },
}
