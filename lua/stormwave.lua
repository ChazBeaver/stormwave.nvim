local M = {}

function M.setup()
  vim.g.colors_name = "stormwave"
  vim.o.background = "dark"

  local palette = require("stormwave.palette")
  require("stormwave.highlights").apply(palette)
end

return M
