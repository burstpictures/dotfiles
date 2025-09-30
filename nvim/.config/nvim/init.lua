-- ==================================
-- Neovim Modular Config Bootstrap
-- Auto-loads all numbered *.lua files in ~/.config/nvim/
-- ==================================

local config_dir = vim.fn.stdpath("config") .. "/"

-- Get all Lua files (excluding init.lua itself)
local files = vim.fn.glob(config_dir .. "*.lua", false, true)
table.sort(files)

for _, file in ipairs(files) do
  if not file:match("init.lua$") then
    local ok, err = pcall(dofile, file)
    if not ok then
      vim.api.nvim_echo(
        {{"Error loading " .. file .. ": " .. err, "ErrorMsg"}},
        true,
        {}
      )
    end
  end
end

