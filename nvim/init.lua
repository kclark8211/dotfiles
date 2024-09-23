local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- basic editor settings
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.mouse = "a"
vim.opt.splitright = true

vim.api.nvim_set_keymap('n', '<leader>gD', ':vsplit | lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

-- Example using a list of specs with the default options
require("lazy").setup("plugins")
