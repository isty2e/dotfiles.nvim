vim.g.mapleader = ","
vim.g.maplocalleader = ","
require "config.options"
require "config.keymaps"

local lazypath = vim.env.LAZY or vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.notify("lazy.nvim is not installed; core editing is available. See README.md.", vim.log.levels.WARN)
  return
end

vim.opt.rtp:prepend(lazypath)
require "lazy_setup"
require("config.lsp").setup()
