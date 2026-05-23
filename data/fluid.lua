local commons = require("scripts.commons")

local prefix = commons.prefix
local png = commons.png

local decl = {}

for i = 1, 9 do
  local fluid = {
    type = "fluid",
    name = prefix .. "-generic-fluid" .. i,
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2kJ",
    base_color = { r = 196, g = 73, b = 253 },
    flow_color = { r = 0.7, g = 0.7, b = 0.7 },
    icon = png("generics/fluid" .. i),
    icon_size = 64,
    order = "a[fluid]-f[fluid" .. i .."]"
  }
  table.insert(decl, fluid)

  local item = {
    type = "item",
    name = prefix .. "-generic-item" .. i,
    icon = png("generics/item" .. i),
    icon_size = 64,
    order = "a[item]-f[item" .. i .. "]",
    stack_size = 100
  }
  table.insert(decl, item)
end

data:extend(decl)
