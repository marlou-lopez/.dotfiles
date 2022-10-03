local opt = vim.opt

-- UI options
opt.number = true
opt.relativenumber = true
opt.errorbells = true
opt.cmdheight = 1
opt.signcolumn = "yes"
opt.termguicolors = true

-- indentation options
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2

-- search options
opt.hlsearch = false
opt.incsearch = true
opt.smartcase = true

-- text rendering options
opt.scrolloff = 8
opt.wrap = false

-- misc
opt.swapfile = false
opt.backup = false
-- opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
opt.splitbelow = true
opt.splitright = true

vim.g.mapleader = " "
