require ("stuff.remap")
require ("stuff.packer")
-- require ("stuff.treesitter:")
--

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
vim.opt.undodir = "C:\\Users\\mcine\\AppData\\Local\\.vimundo"
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
vim.g.netrw_browse_split = 0-- how to open netrw
vim.g.netrw_altv = 1 -- Open with right splitting
vim.g.netrw_liststyle = 3 -- Tree-style view
--vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = 100 -- how big 
vim.g.netrw_sort_options="i"
vim.g.netrw_preview=1 -- split vertically preview
--vim.g.netrw_chgwin=1

vim.opt.ruler = true
vim.opt.splitright = true
vim.opt.path:append '**'
vim.opt.clipboard = 'unnamedplus' -- use system clipboard

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
        if next(vim.fn.argv()) ~= nil then
            vim.cmd("cd %:h")
        end
	end,
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
