require ("stuff.packer")
require ("stuff.remap")
--vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "~/.config/nvimundo/.vimundo"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"

-- file view
vim.g.netrw_banner = 0 -- Hide banner
vim.g.netrw_browse_split = 4 -- Open in previous window
vim.g.netrw_altv = 1 -- Open with right splitting
vim.g.netrw_liststyle = 3 -- Tree-style view
--vim.g.netrw_keepdir = 0

vim.opt.ruler = true
vim.opt.splitright = true
vim.opt.path:append '**'
vim.opt.cdhome = false
vim.opt.autochdir = false
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("cd %:h")
	end,
})

