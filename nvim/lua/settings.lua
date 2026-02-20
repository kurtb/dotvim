local opt = vim.opt

-- Indentation (from .vimrc)
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smarttab = true

-- Backspace behavior (from .vimrc)
opt.backspace = { "indent", "eol", "start" }

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Persistence
opt.undofile = true

-- Performance
opt.updatetime = 250

-- Misc
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
