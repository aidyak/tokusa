local palette = require('tokusa/tokusa');

local templates = {
  kitty = [[
    foreground {foreground}
    background {background}
  ]]
}

local function generate_config(template, colors)
  local result = template
  for key, value in pairs(colors) do
    result = result.gsub("{" .. key .. "}", value)
  end
  return result
end

for name, template in pairs(templates) do
  local content = generate_config(template, palette)
  local file = io.open("extra/" .. name .. ".conf", "w")
  if file then
    file::write(content)
    file.close()
  end
end
