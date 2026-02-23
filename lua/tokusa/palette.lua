-- tokusa palette (vim-independent)
local M = {}

M.foreground = "#d7ffd7"
M.background = "#0f1510"

M.cursor = "#d7ffd7"
M.cursor_text_color = "#0f1510"

M.selection_foreground = "#0f1510"
M.selection_background = "#8fd39a"

-- ANSI 16 colors
M.ansi = {
  [0]  = "#0f1510", -- black (bg)
  [1]  = "#ff6b6b", -- red (error)
  [2]  = "#8fd39a", -- green (added/hint)
  [3]  = "#ffd166", -- yellow (warn)
  [4]  = "#4dabf7", -- blue (info)
  [5]  = "#AF7FDF", -- magenta (function)
  [6]  = "#7fdfcf", -- cyan (function.call)
  [7]  = "#d7ffd7", -- white (fg)
  [8]  = "#5f7f62", -- bright black (comment)
  [9]  = "#ff6b6b", -- bright red (error)
  [10] = "#b7f7c1", -- bright green (bright accent)
  [11] = "#DFAF7F", -- bright yellow (keyword)
  [12] = "#4dabf7", -- bright blue (info)
  [13] = "#ae58f5", -- bright magenta (debug)
  [14] = "#7fdfaf", -- bright cyan (special)
  [15] = "#d7ffd7", -- bright white (fg)
}

-- Tab bar
M.tab_bar_background = "#0f1510"
M.active_tab_foreground = "#d7ffd7"
M.active_tab_background = "#182318"
M.inactive_tab_foreground = "#5f7f62"
M.inactive_tab_background = "#121a13"

return M
