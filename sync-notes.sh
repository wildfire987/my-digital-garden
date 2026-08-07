#!/usr/bin/env bash

# Load NVM environment so npx is available
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Navigate to directory and run sync
cd ~/my-digital-garden || exit
echo "=========================================="
echo " Syncing Obsidian Notes to Quartz..."
echo "=========================================="
npx quartz sync --no-pull

echo ""
read -p "Sync complete! Press Enter to close this window..."
