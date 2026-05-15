#!/bin/bash
set -e

DOTFILES_REPO="git@github.com:fluecke/dotfiles.git"
DOTFILES_DIR="$HOME/.dotfiles"

if [ -d "$DOTFILES_DIR" ]; then
    echo "Error: $DOTFILES_DIR already exists" >&2
    exit 1
fi

git clone --bare "$DOTFILES_REPO" "$DOTFILES_DIR"

dotfiles() { git --git-dir="$DOTFILES_DIR/" --work-tree="$HOME" "$@"; }

dotfiles config --local status.showUntrackedFiles no

# Back up any conflicting files and check out
BACKUP_DIR="$HOME/.dotfiles-backup"
conflicts=$(dotfiles checkout 2>&1 | grep "^\s" | awk '{print $1}')
if [ -n "$conflicts" ]; then
    echo "Backing up conflicting files to $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
    echo "$conflicts" | while read -r f; do
        mkdir -p "$(dirname "$BACKUP_DIR/$f")"
        mv "$HOME/$f" "$BACKUP_DIR/$f"
    done
    dotfiles checkout
fi

echo ""
echo "Done. Add to your shell config:"
echo "  alias dotfiles='git --git-dir=\$HOME/.dotfiles/ --work-tree=\$HOME'"
