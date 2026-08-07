#!/usr/bin/env bash

# Load NVM environment so npx is available
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

VAULT_DIR="/home/andrew/Documents/Obsidian Vault"
QUARTZ_DIR="$HOME/my-digital-garden"

echo "=========================================="
echo " 1. Copying all notes, images & canvases..."
echo "=========================================="
rsync -av --delete \
  --exclude='.obsidian/' \
  --exclude='.trash/' \
  --exclude='.git/' \
  "$VAULT_DIR/" "$QUARTZ_DIR/content/"

echo ""
echo "=========================================="
echo " 2. Syncing Quartz Notes to GitHub..."
echo "=========================================="
cd "$QUARTZ_DIR" || exit
npx quartz sync --no-pull

echo ""
read -p "Sync complete! Press Enter to close this window..."
