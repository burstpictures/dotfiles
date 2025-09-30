-- Options
local o = vim.opt

-- Files, history & search
o.history = 1000
o.undofile = true

-- Indentation
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true

-- Splits
o.splitbelow = true
o.splitright = true

-- Clipboard
o.clipboard = "unnamedplus"

-- Misc
o.mouse = "a"           -- enable mouse
o.swapfile = false      -- don’t leave swapfiles

-- Line numbers
o.number = true
o.relativenumber = true
o.cursorline = true
o.signcolumn = "yes"

-- Colors
o.termguicolors = true
o.background = "dark"

-- Statusline
o.laststatus = 2
o.showmode = false

o.ignorecase = true   -- ignore case
o.smartcase = true    -- unless capital letters are used
o.hlsearch = true     -- highlight search matches
o.incsearch = true    -- incremental search

-- Backspace works naturally
o.backspace = { "indent", "eol", "start" }

-- Show matching brackets
o.showmatch = true

-- Wrapping
o.wrap = false

-- Scroll context
o.scrolloff = 5
