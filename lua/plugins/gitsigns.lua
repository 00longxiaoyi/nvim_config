-- init.lua / plugins.lua
return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { hl = "GitGutterAdd", text = "│", numhl = "GitGutterAddNr" },
          change = { hl = "GitGutterChange", text = "│", numhl = "GitGutterChangeNr" },
          delete = { hl = "GitGutterDelete", text = "_", numhl = "GitGutterDeleteNr" },
          topdelete = { hl = "GitGutterDelete", text = "‾", numhl = "GitGutterDeleteNr" },
          changedelete = { hl = "GitGutterChange", text = "~", numhl = "GitGutterChangeNr" },
        },
        current_line_blame = true, -- 显示当前行最后提交信息
      })
    end,
  },
}
