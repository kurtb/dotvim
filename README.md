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

Then open `nvim` — lazy.nvim bootstraps itself and installs all plugins automatically on first launch.

## Post-install

- Run `:Mason` to see installed language servers (ts_ls, pyright are auto-installed)
- Run `:TSInstall all` to install additional Tree-sitter parsers
- Run `:Lazy` to manage plugins

## Key Mappings

**Leader:** `Space`

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files (Telescope) |
| `<leader>fg` | Live grep (Telescope) |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Find help tags |
| `<leader>e` | Toggle file explorer |
| `<leader>rn` | Rename symbol (LSP) |
| `<leader>ca` | Code action (LSP) |
| `gd` | Go to definition |
| `K` | Hover documentation |
| `[d` / `]d` | Previous/next diagnostic |
| `Alt-j` / `Alt-k` | Move line/selection up/down |
| `gcc` | Toggle line comment |
| `gc` (visual) | Toggle comment on selection |

## Plugins

- **lazy.nvim** — Plugin manager (replaces Pathogen + git submodules)
- **nvim-lspconfig** + **mason.nvim** — Language servers (replaces YouCompleteMe)
- **nvim-cmp** + **LuaSnip** — Completion engine
- **nvim-treesitter** — Syntax highlighting (replaces typescript-vim)
- **telescope.nvim** — Fuzzy finder (replaces ctrlp)
- **vim-fugitive** — Git commands (`:Git`)
- **gitsigns.nvim** — Git diff in sign column + blame
- **tokyonight.nvim** — Colorscheme
- **lualine.nvim** — Status line
- **nvim-tree.lua** — File explorer
- **nvim-surround** — Surround text objects
- **Comment.nvim** — Easy commenting
- **nvim-autopairs** — Auto-close brackets

## Legacy Vim Config

The old `.vimrc` (Pathogen-based) is kept for reference but is no longer maintained.
