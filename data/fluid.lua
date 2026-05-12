local commons = require("scripts.commons")

local prefix = commons.prefix
local png = commons.png


local fluid = {
  type = "fluid",
  name = prefix .. "-generic-fluid1",
  default_temperature = 15,
  max_temperature = 100,
  heat_capacity = "0.2kJ",
  base_color = { r = 196, g = 73, b = 253 },
  flow_color = { r = 0.7, g = 0.7, b = 0.7 },
  icon = png("fluids/fluid1"),
  icon_size = 64,
  order = "a[fluid]-f[fluid1]"
}

data:extend { fluid }

