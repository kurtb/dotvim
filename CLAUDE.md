# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a **Neovim** configuration repository using [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management. All config lives under `nvim/` and is written in Lua.

## Setup

To install on a new system:

```bash
git clone https://github.com/kurtb/dotvim.git ~/dev/dotvim
ln -s ~/dev/dotvim/nvim ~/.config/nvim
```

Open `nvim` — lazy.nvim auto-installs itself and all plugins on first launch. No git submodules needed; lazy.nvim manages plugins natively in `~/.local/share/nvim/`.

## Repository Structure

```
nvim/
  init.lua              ← bootstrap lazy.nvim + load settings + plugins
  lua/
    settings.lua        ← vim.opt.* settings
    keymaps.lua         ← keymaps including Alt-j/k line movement
    plugins/
      lsp.lua           ← mason + nvim-lspconfig (ts_ls, pyright)
      completion.lua    ← nvim-cmp + LuaSnip
      treesitter.lua    ← nvim-treesitter
      telescope.lua     ← telescope.nvim (file finder + grep)
      git.lua           ← vim-fugitive + gitsigns.nvim
      ui.lua            ← tokyonight + lualine + nvim-tree
      editing.lua       ← nvim-surround + Comment.nvim + nvim-autopairs
.vimrc                  ← legacy Vim config (kept for reference, not maintained)
```

## Adding Plugins

Add a new spec to the appropriate file in `nvim/lua/plugins/` or create a new file there. lazy.nvim automatically discovers all files in `lua/plugins/`.

Example:
```lua
return {
    {
        "author/plugin-name",
        config = function()
            require("plugin-name").setup()
        end,
    },
}
```

## Key Configuration

- **Leader key:** `Space`
- **Indentation:** 4 spaces, expandtab, shiftwidth=4
- **Line movement:** `Alt-j`/`Alt-k` in normal, insert, and visual modes
  - Gnome terminal workaround via `Esc-j`/`Esc-k` is included
- **Language servers:** TypeScript (`ts_ls`) and Python (`pyright`) via Mason

## Post-install Commands

- `:Lazy` — open plugin manager UI
- `:Mason` — open LSP/tool installer UI
- `:TSInstall <lang>` — install a Tree-sitter parser
