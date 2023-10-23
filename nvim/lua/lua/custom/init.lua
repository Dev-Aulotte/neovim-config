vim.opt.scrolloff = 16
vim.opt.colorcolumn = "80"
vim.opt.relativenumber = true

-- Use tabs instead of spaces
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

-- Make tab visible
vim.opt.list = true
vim.opt.listchars = {
	tab = "-»",
	trail = "·",
	extends = "»",
	precedes = "«",
	space = "·",
	eol = "↲",
}
