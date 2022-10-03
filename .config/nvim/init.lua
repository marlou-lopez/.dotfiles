require("deps")

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd [[
runtime! lua/modules/options.lua
runtime! lua/modules/util.lua
runtime! lua/modules/mappings.lua
]]

vim.api.nvim_create_autocmd("TermOpen", { command = "startinsert", pattern = "*"})
-- autocmd FileType * setlocal textwidth=0
-- vim.api.nvim_create_autocmd("FileType", { command = [[setlocal textwidth=0]]})
