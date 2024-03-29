local Remap = require("modules.util")
local nnoremap = Remap.nnoremap


nnoremap("<leader>ma", function()
  require("harpoon.mark").add_file()
end)

nnoremap("<leader>m", function()
  require("harpoon.ui").toggle_quick_menu()
end)

nnoremap("<leader>1", function()
  require("harpoon.ui").nav_file(1)
end)

nnoremap("<leader>2", function()
  require("harpoon.ui").nav_file(2)
end)

nnoremap("<leader>3", function()
  require("harpoon.ui").nav_file(3)
end)

nnoremap("<leader>4", function()
  require("harpoon.ui").nav_file(4)
end)
