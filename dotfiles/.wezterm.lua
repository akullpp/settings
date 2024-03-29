local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Monokai Pro Ristretto (Gogh)'
config.font = wezterm.font('Operator Mono Lig')
config.font_size = 14

return config
