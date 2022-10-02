local Remap = require("modules/util")
local nnoremap = Remap.nnoremap

require('nvim-tree').setup({
  view = {
    side = 'right'
  }
})

nnoremap("<leader>fe", function()
  require('nvim-tree').toggle(false, true)
end)
