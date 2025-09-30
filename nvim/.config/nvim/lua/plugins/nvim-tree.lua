-- ~/.config/nvim/lua/plugins/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      view = { width = 30 },
      renderer = { highlight_opened_files = "all" },
    })
  end,
}
