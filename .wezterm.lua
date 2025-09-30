-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
-- Window
config.window_decorations="NONE"
config.enable_tab_bar=false
config.window_padding = {
	left = 6,
	right = 6,
	top = 6,
	bottom = 3
}

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- Fonts
config.font_size = 11
config.font = wezterm.font 'Iosevka'
config.freetype_load_target = 'HorizontalLcd'
config.font_shaper = 'Harfbuzz'

-- Finally, return the configuration to wezterm:
return config
