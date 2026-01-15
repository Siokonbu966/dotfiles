local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.automatically_reload_config = true

config.font_size = 13.0
config.use_ime = true
config.window_background_opacity = 0.6
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false

-- config.window_frame = {
--   inactive_titlebar_bg = "none",
--   active_titlebar_bg = "none",
-- }

config.colors = {
  tab_bar = {
    background = "none",
    inactive_tab_edge = "none",
  },
}

config.use_fancy_tab_bar = false

config.window_background_gradient = {
  colors = { "#000000" },
}


return config
