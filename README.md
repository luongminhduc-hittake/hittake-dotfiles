# ❄️ hittake-dotfiles

Personal dotfiles for Arch Linux / Omarchy with Hyprland and Quickshell.

## 🌸 Overview
- **OS**: Arch Linux (Omarchy)
- **Window Manager**: Hyprland (configured in Lua)
- **Status Bar / Shell**: Quickshell (`omarchy-shell`)
- **Theme**: `hittake-cappu` (Catppuccin Mocha palette, mauve/accent blue, blurred surfaces)
- **Terminals**: Alacritty, Kitty, Ghostty, Foot
- **Shell & Prompt**: Bash + Starship
- **Fetch & Branding**: Fastfetch & Omarchy branding (custom Mauve Lantern ASCII logo, Catppuccin Mocha theme)
- **Boot Splash**: Custom Omarchy Plymouth splash (Mauve Lantern on Catppuccin Mocha `#1e1e2e` background)

## 📁 Repository Structure
```
.config/
├── hypr/               # Hyprland Lua configs (bindings, looknfeel, input, monitors, autostart)
├── omarchy/            # Omarchy shell layout (shell.json, shell.toml), plugins & branding
│   ├── branding/       # Custom Lantern ASCII logo (about.txt) & screensaver (screensaver.txt)
│   ├── screensaver/    # Screensaver terminal configurations (alacritty.toml)
│   ├── plugins/        # Custom bar plugins (hittake.indicators, cliampui, cpu-usage)
│   └── themes/
│       └── hittake-cappu/ # Full standalone Omarchy theme
├── fastfetch/          # Fastfetch configuration (config.jsonc) & Lantern logo (lantern.txt)
├── alacritty/          # Alacritty terminal emulator config
├── kitty/              # Kitty terminal emulator config
├── ghostty/            # Ghostty terminal config
├── foot/               # Foot terminal config
└── starship.toml       # Starship prompt configuration
.local/bin/             # Custom screensaver launcher and runner overrides
others/
├── plymouth/           # Custom Mauve Lantern Plymouth boot splash theme and installer
├── for-zen-browser/    # Custom CSS for Zen Browser
└── vesktop/            # Custom Discord/Vesktop styles
```

## 🚀 Setup & Usage
### Applying the Theme in Omarchy
```bash
# Link or copy theme to ~/.config/omarchy/themes/
cp -r .config/omarchy/themes/hittake-cappu ~/.config/omarchy/themes/

# Apply theme
omarchy theme set hittake-cappu
```

### Fastfetch & Branding
```bash
# Copy config and ASCII logo
mkdir -p ~/.config/fastfetch ~/.config/omarchy/branding
cp .config/fastfetch/* ~/.config/fastfetch/
cp .config/omarchy/branding/* ~/.config/omarchy/branding/

# Run
fastfetch
```

### Screensaver
```bash
# Copy screensaver overrides
mkdir -p ~/.config/omarchy/screensaver ~/.local/bin
cp .config/omarchy/screensaver/* ~/.config/omarchy/screensaver/
cp .local/bin/* ~/.local/bin/
chmod +x ~/.local/bin/omarchy-*
```

### Plymouth Boot Splash
```bash
# Install Plymouth theme and rebuild initramfs
cd others/plymouth
./install.sh
```

### Zen Browser
1. In Zen Browser, navigate to `about:support` and check your **Profile Directory** (typically `~/.zen/<profile-id>/`).
2. Open `about:config` and make sure `toolkit.legacyUserProfileCustomizations.stylesheets` is set to `true`.
3. Copy the `chrome` styles to your profile directory:
```bash
cp -r others/for-zen-browser/chrome ~/.zen/<profile-id>/
```
4. Restart Zen Browser.

### Vesktop (Discord)
- **CLI**:
```bash
mkdir -p ~/.config/vesktop/settings
cat others/vesktop/pastecss.txt >> ~/.config/vesktop/settings/quickCss.css
```
- **GUI**:
  Open Vesktop $\rightarrow$ **Settings** $\rightarrow$ **Themes** (Vencord section) $\rightarrow$ Paste the content of `others/vesktop/pastecss.txt` into **Quick CSS**.

