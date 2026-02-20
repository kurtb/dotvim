dotvim
======

Neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

## Requirements

- [Neovim](https://neovim.io/) >= 0.9
- `git`, `make` (for telescope-fzf-native)
- `node` (for TypeScript LSP), `python3` (for pyright)

## Setup

```bash
git clone https://github.com/kurtb/dotvim.git ~/dev/dotvim
ln -s ~/dev/dotvim/nvim ~/.config/nvim
```

Open `nvim` — lazy.nvim bootstraps itself and installs all plugins automatically on first launch.

## Managing plugins

Open the lazy.nvim UI with `:Lazy`. From there you can update, clean, or inspect any plugin.

To add a plugin, create or edit a file in `nvim/lua/plugins/`. Each file returns a table of plugin specs — lazy.nvim picks them all up automatically.

---

## Plugin guide

### LSP — code intelligence

Powered by **mason.nvim** (installs language server binaries) and **nvim-lspconfig** (configures them). TypeScript/JavaScript (`ts_ls`) and Python (`pyright`) are installed automatically on first launch. Run `:Mason` to see what's installed or add more servers.

| Key | Action |
|-----|--------|
| `gd` | Jump to definition |
| `gr` | List all references |
| `K` | Show hover docs (press again to enter the float) |
| `<leader>rn` | Rename symbol across the file |
| `<leader>ca` | Code actions (fix imports, extract variable, etc.) |
| `[d` / `]d` | Jump to previous/next diagnostic (error/warning) |

Diagnostics (errors, warnings) show inline. `:lua vim.diagnostic.open_float()` shows the full message for the current line.

---

### Completion — nvim-cmp + LuaSnip

Autocomplete menu appears as you type, pulling from LSP, open buffers, and file paths.

| Key | Action |
|-----|--------|
| `Tab` | Select next item / expand snippet |
| `Shift-Tab` | Select previous item / jump back in snippet |
| `Ctrl-Space` | Manually trigger completion menu |
| `Enter` | Confirm selected item |
| `Ctrl-e` | Close the menu |

---

### Telescope — fuzzy finder

A floating search UI for files, text, buffers, and more. Inside a Telescope picker: `j`/`k` moves up/down, `Enter` opens the selection, `Ctrl-c` or `Esc` closes it.

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files by name |
| `<leader>fg` | Search text across the whole project (live grep) |
| `<leader>fb` | Switch between open buffers |
| `<leader>fh` | Search Neovim help docs |

---

### Tree-sitter — syntax highlighting

**nvim-treesitter** parses your code into a syntax tree for accurate, fast highlighting. It also improves indentation. Parsers for TypeScript, JavaScript, Python, Lua, JSON, and Markdown are installed automatically.

This works silently in the background — you'll just notice that highlighting is more accurate than regex-based approaches, particularly for complex nested code.

---

### File explorer — nvim-tree

A sidebar file tree.

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle the file explorer open/closed |

Inside the tree: `Enter` opens a file, `a` creates a file, `d` deletes, `r` renames, `R` refreshes, `H` toggles hidden files, `?` shows all keymaps.

---

### Git

Two plugins work together:

**vim-fugitive** — full Git interface via `:Git` (or `:G` for short). Examples:
- `:Git` — status window; press `-` to stage/unstage, `=` to see diff inline, `cc` to commit
- `:Git blame` — annotated blame view
- `:Git diff` — diff of working tree
- `:Git log` — commit log

**gitsigns.nvim** — shows changed lines in the sign column (`+` added, `~` changed, `_` deleted) and a dim blame annotation at the end of the current line.

| Key | Action |
|-----|--------|
| `]h` / `[h` | Jump to next/previous changed hunk |
| `<leader>hs` | Stage the hunk under the cursor |
| `<leader>hr` | Reset (discard) the hunk under the cursor |
| `<leader>hb` | Show a popup with the full blame for the current line |

---

### Surround — nvim-surround

Add, change, or delete surrounding characters (brackets, quotes, tags, etc.).

| Key | Action |
|-----|--------|
| `ysiw"` | Surround the word under cursor with `"` (ys = you surround, iw = inner word) |
| `ys$"` | Surround from cursor to end of line with `"` |
| `cs"'` | Change surrounding `"` to `'` |
| `ds"` | Delete surrounding `"` |
| `S"` | (visual mode) Surround selection with `"` |

Works with any character: `(`, `[`, `{`, `'`, `` ` ``, HTML tags, etc.

---

### Comment.nvim — easy commenting

| Key | Action |
|-----|--------|
| `gcc` | Toggle comment on current line |
| `gc` + motion | Comment a motion (e.g. `gc3j` comments 3 lines down) |
| `gc` | (visual mode) Toggle comment on selection |

Uses the correct comment syntax for the current filetype automatically.

---

### Autopairs

Automatically inserts the closing character when you type `(`, `[`, `{`, `"`, `'`, or `` ` ``. Works with the completion menu — confirming a completion that ends with `(` will auto-insert `)`.

Nothing to configure; it just works.

---

### UI

- **tokyonight** — colorscheme (storm variant)
- **lualine** — status bar showing mode, git branch, diagnostics, filename, and cursor position
- **nvim-web-devicons** — file type icons (requires a [Nerd Font](https://www.nerdfonts.com/) in your terminal)

---

## General keymaps

**Leader:** `Space`

| Key | Action |
|-----|--------|
| `Alt-j` / `Alt-k` | Move current line or selection up/down |
| `Ctrl-h/j/k/l` | Move between splits |
| `Esc` (normal mode) | Clear search highlight |

---

## Legacy Vim config

The old `.vimrc` (Pathogen-based) is kept for reference but is no longer maintained.
