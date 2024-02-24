-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()



-- config.color_scheme = 'Black Metal (Dark Funeral) (base16)'
-- config.color_scheme = 'Nord (base16)'
-- config.window_decorations = "RESIZE"
-- config.enable_scroll_bar = false
config.font_size = 14.0
config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 500
config.scrollback_lines = 5000
config.hide_mouse_cursor_when_typing = false



-- tab bar
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.tab_max_width = 50
config.show_tab_index_in_tab_bar = true
config.switch_to_last_active_tab_when_closing_tab = true
config.tab_bar_at_bottom = true



 -- window
config.window_close_confirmation = 'NeverPrompt'
config.window_frame = {
  font = wezterm.font { family = 'JetBrains Mono'},
  font_size = 12.0,
  active_titlebar_bg = '#000000',
  inactive_titlebar_bg = '#000000',
}
config.inactive_pane_hsb = {
  saturation = 1,
  brightness = 1,
}
config.window_padding = {
  left = 100,
  right = 100,
  top = 50,
  bottom = 50,
}



-- keyboard shortcuts
config.keys = {
  {
    key = 'q',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}



-- maximaze window
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)



return config
