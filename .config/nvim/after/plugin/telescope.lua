local Remap = require("modules.util")
local nnoremap = Remap.nnoremap

local ignored_list = {
		"node_modules",
		-- "^.git/",
}

require("telescope").setup({
		defaults = {
				file_ignore_patterns = ignored_list,
				-- mappings = {
				--   i = {
				--     ['<C-u>'] = false,
				--     ['<C-d>'] = false,
				--   }
				-- }
		},
		pickers = {
				find_files = {
						find_command = { 'rg', '--files', '--hidden', '-g', '!.git' },
				}
		}
})

require("telescope").load_extension("fzf")

nnoremap("<leader>?", function()
	require("telescope.builtin").oldfiles()
end, {
		desc = "[?] Find recently opened files",
})
nnoremap("<leader><space>", function()
	require("telescope.builtin").buffers()
end, {
		desc = "[ ] Find existing buffers",
})
nnoremap("<leader>/", function()
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
			windblend = 10,
			previewer = false,
	}))
end, {
		desc = "[/] Fuzzily search in current buffer",
})

nnoremap("<leader>ff", function()
	require("telescope.builtin").find_files()
end)
nnoremap("<leader>fh", function()
	require("telescope.builtin").help_tags()
end)
nnoremap("<leader>fw", function()
	require("telescope.builtin").grep_string()
end)
nnoremap("<leader>fg", function()
	require("telescope.builtin").live_grep()
end)
nnoremap("<leader>fd", function()
	require("telescope.builtin").diagnostics()
end)
