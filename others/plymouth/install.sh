#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_DIR="/usr/share/plymouth/themes/omarchy"

echo "Installing Omarchy Mauve Lantern Plymouth theme..."
sudo cp "$SCRIPT_DIR/logo.png" "$THEME_DIR/logo.png"
sudo cp "$SCRIPT_DIR/omarchy.script" "$THEME_DIR/omarchy.script"
sudo cp "$SCRIPT_DIR/omarchy.plymouth" "$THEME_DIR/omarchy.plymouth"
sudo chmod 644 "$THEME_DIR/logo.png" "$THEME_DIR/omarchy.script" "$THEME_DIR/omarchy.plymouth"

echo "Rebuilding initramfs..."
if command -v limine-mkinitcpio >/dev/null 2>&1; then
  sudo limine-mkinitcpio
else
  sudo mkinitcpio -P
fi

echo "Plymouth theme installed successfully!"
