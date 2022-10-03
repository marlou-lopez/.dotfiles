local Remap = require("modules/util")
local nnoremap = Remap.nnoremap

require('nvim-tree').setup({
  view = {
    side = 'right'
  },
  update_focused_file = {
    enable = true
  }
})

nnoremap("<leader>fe", function()
  require('nvim-tree').toggle()
end)
