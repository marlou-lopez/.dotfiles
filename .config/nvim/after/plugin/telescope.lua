local Remap = require("modules.util")
local nnoremap = Remap.nnoremap

local ignored_list = {
    "node_modules",
    "^.git/"
}

local _, telescope = pcall(require, "telescope")

telescope.setup {
    pickers = {
        find_files = {
            file_ignore_patterns = ignored_list,
            hidden = true
        }
    }
}

nnoremap("<Leader>ff", function()
    require('telescope.builtin').find_files()
end)

nnoremap("<Leader>fb", function()
    require('telescope.builtin').buffers()
end)

nnoremap("<Leader>fo", function()
    require('telescope.builtin').oldfiles()
end)
