local wezterm = require 'wezterm'
local act = wezterm.action

return {
  keys = {
    -- paste from the clipboard
    { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },

    -- paste from the primary selection
    { key = 'V', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' },
    {
      key = 'C',
      mods = 'CTRL',
      action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
    },
  },
  color_scheme = "nord",
  font_size = 13.0,
  font = wezterm.font('CaskaydiaCove Nerd Font Mono'),
  window_background_opacity = 0.80,
  mouse_bindings = {
    {
      event = { Up = { streak = 1, button = 'Right' } },
      mods = 'NONE',
      action = wezterm.action{PasteFrom="Clipboard"},
    },
  },
}

