# ❄️ hittake-dotfiles

Personal dotfiles for Arch Linux / Omarchy with Hyprland and Quickshell.

## 🌸 Overview
- **OS**: Arch Linux (Omarchy)
- **Window Manager**: Hyprland (configured in Lua)
- **Status Bar / Shell**: Quickshell (`omarchy-shell`)
- **Theme**: `hittake-cappu` (Catppuccin Mocha palette, mauve/accent blue, blurred surfaces)
- **Terminals**: Alacritty, Kitty, Ghostty, Foot
- **Shell & Prompt**: Bash + Starship
- **Fetch**: Fastfetch (custom Anime ASCII art logo with gradient palette)

## 📁 Repository Structure
```
.config/
├── hypr/               # Hyprland Lua configs (bindings, looknfeel, input, monitors, autostart)
├── omarchy/            # Omarchy shell layout (shell.json, shell.toml), plugins & branding
│   ├── branding/       # Custom anime ASCII logo (about.txt)
│   ├── plugins/        # Custom bar plugins (hittake.indicators, cliampui)
│   └── themes/
│       └── hittake-cappu/ # Full standalone Omarchy theme
├── fastfetch/          # Fastfetch configuration (config.jsonc)
├── alacritty/          # Alacritty terminal emulator config
├── kitty/              # Kitty terminal emulator config
├── ghostty/            # Ghostty terminal config
├── foot/               # Foot terminal config
└── starship.toml       # Starship prompt configuration
others/
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

### Fastfetch
```bash
# Copy config and ASCII logo
mkdir -p ~/.config/fastfetch ~/.config/omarchy/branding
cp .config/fastfetch/config.jsonc ~/.config/fastfetch/
cp .config/omarchy/branding/about.txt ~/.config/omarchy/branding/

# Run
fastfetch
```
