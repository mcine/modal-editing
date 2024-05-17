local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "folke/which-key.nvim",
  "folke/tokyonight.nvim",
  "nvim-lua/plenary.nvim",
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "catppuccin/nvim",
    name="catppuccin",
    config= function()
      vim.cmd("colorscheme catppuccin")
    end
  },
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  "mbbill/undotree",
  --"github/copilot.vim",
  "ilyachur/cmake4vim",
})
