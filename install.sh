#!/usr/bin/env bash
set -euo pipefail

# Resolve the repo root regardless of where the script is called from
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Neovim must already be installed — we don't install it for you
if ! command -v nvim &>/dev/null; then
    echo "Error: nvim not found. Install from https://neovim.io"
    exit 1
fi

mkdir -p "$HOME/.config"
TARGET="$HOME/.config/nvim"

# Create the symlink if missing; skip if it already points here; error if
# something else is already at that path (don't clobber existing config)
if [ -L "$TARGET" ] && [ "$(readlink "$TARGET")" = "$REPO/nvim" ]; then
    echo "~/.config/nvim already set up"
elif [ -e "$TARGET" ]; then
    echo "Error: $TARGET exists and is not a symlink to this repo. Remove it and re-run."
    exit 1
else
    ln -s "$REPO/nvim" "$TARGET"
    echo "Linked ~/.config/nvim -> $REPO/nvim"
fi

echo "Done. Open nvim to install plugins."
