local map = vim.keymap.set

-- Terminals (like gnome) have issues with alt key — workaround via Esc-j/k
map({ "n", "v" }, "<Esc>j", "<A-j>", { desc = "Gnome terminal Alt-j workaround" })
map({ "n", "v" }, "<Esc>k", "<A-k>", { desc = "Gnome terminal Alt-k workaround" })

-- Move lines up/down (from .vimrc)
-- https://vim.fandom.com/wiki/Moving_lines_up_or_down
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Clear search highlight with Escape
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Better window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
