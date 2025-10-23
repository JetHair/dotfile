{ ... }:
{
  programs.wezterm = {
    enable = true;
    extraConfig =
      # lua
      ''
        local wezterm = require("wezterm")
        local act = wezterm.action
        local config = {}
        local workspace_switcher = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")
        workspace_switcher.apply_to_config(config)
        config.default_workspace = "~"

        config.cursor_thickness = 1
        config.default_cursor_style = "SteadyBar"
        config.enable_tab_bar = true
        config.use_fancy_tab_bar = false
        config.show_new_tab_button_in_tab_bar = false
        config.tab_bar_at_bottom = true
        config.color_scheme = "Catppuccin Mocha"
        config.colors = {
                  background = 'black',
            }
        config.quit_when_all_windows_are_closed = false
        config.unix_domains = {
          { name = 'unix' },
        }
        config.default_gui_startup_args = { 'connect', 'unix' }
                config.window_padding = {
                	left = 0,
                	right = 0,
                	top = 0,
                	bottom = 0,
                }
                config.keys = {
                	{ key = "h", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
                	{ key = "j", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
                	{ key = "k", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
                	{ key = "l", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
                	{
                		key = "s",
                		mods = "ALT",
                		action = workspace_switcher.switch_workspace(),
                	},
                	{
                		key = "S",
                		mods = "ALT",
                		action = workspace_switcher.switch_to_prev_workspace(),
                	},
                	{
                		key = "p",
                		mods = "ALT",
                		action = act.ActivateKeyTable({
                			name = "pane",
                		}),
                	},
                	{
                		key = "t",
                		mods = "ALT",
                		action = act.ActivateKeyTable({
                			name = "tab",
                		}),
                	},
                }

                config.key_tables = {
                	tab = {
                		{ key = "n", action = act.SpawnCommandInNewTab({
                			args = { "zsh" },
                		}) },
                		{ key = "x", action = act.CloseCurrentTab({ confirm = true }) },
                	},
                	pane = {
                		{ key = "h", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
                		{ key = "v", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
                		{ key = "x", action = act.CloseCurrentPane({ confirm = true }) },
                	},
                }

                for i = 1, 9 do
                	table.insert(config.keys, {
                		key = tostring(i),
                		mods = "ALT",
                		action = wezterm.action.ActivateTab(i - 1),
                	})
                end
                return config
      '';
  };
}
