-- ~/.config/nvim/99-plugins.lua

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugin modules from ~/.config/nvim/plugins/
require("lazy").setup({
  require("plugins.telescope"),
  require("plugins.nvim-tree"),
  require("plugins.lualine"),
  require("plugins.gitsigns"),
})
