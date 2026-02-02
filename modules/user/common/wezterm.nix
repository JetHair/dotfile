{ ... }:
{
  programs.wezterm = {
    enable = true;
    extraConfig =
      # lua
      ''
        local wezterm = require("wezterm")
        local act = wezterm.action
        local workspace_switcher = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")
        local config = {}
        workspace_switcher.apply_to_config(config)
        config.default_workspace = "~"

        local w = require('wezterm')

        -- if you are *NOT* lazy-loading smart-splits.nvim (recommended)
        local function is_vim(pane)
            -- this is set by the plugin, and unset on ExitPre in Neovim
            return pane:get_user_vars().IS_NVIM == 'true'
        end

        local direction_keys = {
            h = 'Left',
            j = 'Down',
            k = 'Up',
            l = 'Right',
        }

        local function split_nav(resize_or_move, key)
            return {
                key = key,
                mods = resize_or_move == 'resize' and 'META|SHIFT' or 'META',
                action = w.action_callback(function(win, pane)
                    if is_vim(pane) then
                        -- pass the keys through to vim/nvim
                        win:perform_action({
                            SendKey = { key = key, mods = resize_or_move == 'resize' and 'META|SHIFT' or 'META' },
                        }, pane)
                    else
                        if resize_or_move == 'resize' then
                            win:perform_action({ AdjustPaneSize = { direction_keys[key], 3 } }, pane)
                        else
                            win:perform_action({ ActivatePaneDirection = direction_keys[key] }, pane)
                        end
                    end
                end),
            }
        end

        -- Cursor and UI
        config.cursor_thickness = 1
        config.default_cursor_style = "SteadyBar"
        config.enable_tab_bar = true
        config.use_fancy_tab_bar = false
        config.show_new_tab_button_in_tab_bar = false
        config.tab_bar_at_bottom = true
        config.colors = {
          -- The default text color
          foreground = '#e0dcd4',
          -- The default background color
          background = '#000000',

          -- Cursor colors
          cursor_bg = '#DBCDB3',
          cursor_fg = '#1a1d21',          -- using background color as specified by cursor_text_color = 'background'
          cursor_border = '#DBCDB3',

          -- Selection colors
          selection_fg = '#e0dcd4',
          selection_bg = '#3d424a',

          -- Optional: scrollbar thumb and pane split (feel free to change or remove)
          scrollbar_thumb = '#222222',
          split = '#444444',

          -- Standard 16-color palette (ansi 0-7)
          ansi = {
            '#1a1d21',  -- color0
            '#CDACAC',  -- color1
            '#b8c4b8',  -- color2
            '#DBCDB3',  -- color3
            '#b4bcc4',  -- color4
            '#c0b8bc',  -- color5
            '#b0bcc8',  -- color6
            '#c0bdb8',  -- color7
          },

          -- Bright colors (ansi 8-15)
          brights = {
            '#515761',  -- color8
            '#c8beb8',  -- color9
            '#b4beb4',  -- color10
            '#ccc4b0',  -- color11
            '#b4bcc4',  -- color12
            '#c4beb8',  -- color13
            '#b0c0b8',  -- color14
            '#e0dcd4',  -- color15
          },

          -- Compose cursor (default orange - change if desired)
          compose_cursor = 'orange',

          -- Copy mode and quick select colors (kept reasonable defaults; adjust as needed)
          copy_mode_active_highlight_bg = { Color = '#000000' },
          copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
          copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
          copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },

          quick_select_label_bg = { Color = 'peru' },
          quick_select_label_fg = { Color = '#ffffff' },
          quick_select_match_bg = { AnsiColor = 'Navy' },
          quick_select_match_fg = { Color = '#ffffff' },
        }
        config.quit_when_all_windows_are_closed = false

        -- Unix domain for neovim socket connection
        config.unix_domains = {
            { name = 'unix' },
        }

        -- Startup args for connecting to unix domain (Neovim socket)
        config.default_gui_startup_args = { 'connect', 'unix' }

        -- Window padding
        config.window_padding = {
            left = 0,
            right = 0,
            top = 0,
            bottom = 0,
        }

        config.keys = {
            -- move panes
            split_nav('move', 'h'),
            split_nav('move', 'j'),
            split_nav('move', 'k'),
            split_nav('move', 'l'),
            -- resize panes
            split_nav('resize', 'h'),
            split_nav('resize', 'j'),
            split_nav('resize', 'k'),
            split_nav('resize', 'l'),
            -- Workspace switching
            { key = "s", mods = "ALT", action = workspace_switcher.switch_workspace() },
            { key = "S", mods = "ALT", action = workspace_switcher.switch_to_prev_workspace() },
            -- Activate key tables
            { key = "p", mods = "ALT", action = act.ActivateKeyTable({ name = "pane" }) },
            { key = "t", mods = "ALT", action = act.ActivateKeyTable({ name = "tab" }) },
        }

        config.key_tables = {
            tab = {
                { key = "n", action = act.SpawnCommandInNewTab({ args = { "zsh" } }) },
                { key = "x", action = act.CloseCurrentTab({ confirm = true }) },
            },
            pane = {
                { key = "h", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
                { key = "v", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
                { key = "x", action = act.CloseCurrentPane({ confirm = true }) },
            },
        }

        -- Alt + 1..9 for activating tabs 0..8
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
