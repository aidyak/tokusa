-- Add lua/ to package path for standalone execution
local script_path = debug.getinfo(1, "S").source:match("^@(.+)") or ""
local lua_dir = script_path:match("^(.+)/tokusa/generator%.lua$") or "./lua"
package.path = lua_dir .. "/?.lua;" .. lua_dir .. "/?/init.lua;" .. package.path

local palette = require("tokusa.palette")

local kitty_template = [[# tokusa - dark green colorscheme for kitty

foreground {foreground}
background {background}

cursor {cursor}
cursor_text_color {cursor_text_color}

selection_foreground {selection_foreground}
selection_background {selection_background}

# ANSI colors
color0  {color0}
color1  {color1}
color2  {color2}
color3  {color3}
color4  {color4}
color5  {color5}
color6  {color6}
color7  {color7}
color8  {color8}
color9  {color9}
color10 {color10}
color11 {color11}
color12 {color12}
color13 {color13}
color14 {color14}
color15 {color15}

# Tab bar
tab_bar_background {tab_bar_background}
active_tab_foreground {active_tab_foreground}
active_tab_background {active_tab_background}
inactive_tab_foreground {inactive_tab_foreground}
inactive_tab_background {inactive_tab_background}
]]

local function generate_config(template, colors)
  local result = template
  for key, value in pairs(colors) do
    result = result:gsub("{" .. key .. "}", value)
  end
  return result
end

local function collect_colors()
  local colors = {
    foreground = palette.foreground,
    background = palette.background,
    cursor = palette.cursor,
    cursor_text_color = palette.cursor_text_color,
    selection_foreground = palette.selection_foreground,
    selection_background = palette.selection_background,
    tab_bar_background = palette.tab_bar_background,
    active_tab_foreground = palette.active_tab_foreground,
    active_tab_background = palette.active_tab_background,
    inactive_tab_foreground = palette.inactive_tab_foreground,
    inactive_tab_background = palette.inactive_tab_background,
  }
  for i = 0, 15 do
    colors["color" .. i] = palette.ansi[i]
  end
  return colors
end

local root = lua_dir:match("^(.+)/lua$") or "."

local out_dir = root .. "/extra/kitty"
os.execute('mkdir -p "' .. out_dir .. '"')

local colors = collect_colors()
local content = generate_config(kitty_template, colors)

local path = out_dir .. "/tokusa.conf"
local file = io.open(path, "w")
if file then
  file:write(content)
  file:close()
  print("Generated: " .. path)
else
  io.stderr:write("Error: could not write to " .. path .. "\n")
  os.exit(1)
end
