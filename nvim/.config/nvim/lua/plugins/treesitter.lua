-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,   -- 👈 force load immediately
  opts = {
    ensure_installed = { "lua", "vim", "bash", "markdown" },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    local install = require("nvim-treesitter.install")
    install.prefer_git = false
    install.compilers = {} -- disable compiler

    require("nvim-treesitter.configs").setup(opts)
  end,
}

