-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", screenshot, "omarchy-capture-screenshot")

hl.unbind("SUPER + W")
hl.bind("SUPER + Q", hl.dsp.window.close())




hl.unbind("SUPER + L")
hl.unbind("SUPER + CTRL + ALT + Z")
hl.unbind("SUPER + CTRL + Z")
hl.unbind("SUPER + ALT + F")
hl.unbind("SUPER + S")

o.bind("SUPER + A", "Gemini", { webapp = "https://gemini.google.com/" })

hl.unbind("SUPER + SHIFT + F")
o.bind("SUPER + E", "File manager", { omarchy = "nautilus" })

hl.unbind("SUPER + SHIFT + N", "Editor")
o.bind("SUPER + N", "Editor", { omarchy = "editor" })

hl.unbind("SUPER + SHIFT + ALT + B")
hl.unbind("SUPER + SHIFT + B")
o.bind("SUPER + B", "Browser", { omarchy = "browser" })
o.bind("SUPER + SHIFT + B", "Browser (private)", { omarchy = "browser --private" })


hl.unbind("SUPER + SPACE")
o.bind("SUPER + SPACE", "Apps menu", "omarchy-menu toggle apps")
hl.unbind("SUPER + ALT + SPACE")
o.bind("SUPER + ALT + SPACE", "Omarchy menu", "omarchy-menu toggle")

o.bind("CTRL + SHIFT + ESCAPE", "Activity", "omarchy-launch-tui btop")

o.bind("SUPER + I", "Toggle float (900x600 centered) / tile", function()
  local win = hl.get_active_window()
  if not win then
    return
  end

  if win.floating then
    hl.dispatch(hl.dsp.window.float())
  else
    hl.dispatch(hl.dsp.window.float())
    hl.dispatch(hl.dsp.window.resize({ x = 900, y = 600 }))
    hl.dispatch(hl.dsp.window.center())
  end
end)