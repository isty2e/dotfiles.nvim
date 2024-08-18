-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo(
    { { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } },
    true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

-- Colemak mapping
vim.g.colemak_mapping = 1

local function colemak_to_qwerty()
  local mappings = {
    { '', 'f', 'e' }, { 'n', 'p', 'r' }, { 'x', 'p', 'r' }, { 'o', 'p', 'r' },
    { '', 'g', 't' }, { '', 'j', 'y' }, { '', 'l', 'u' }, { '', 'u', 'i' },
    { '', 'y', 'o' }, { '', ';', 'p' }, { '', 'r', 's' }, { '', 's', 'd' },
    { '', 't', 'f' }, { '', 'd', 'g' }, { '', 'n', 'j' }, { '', 'e', 'k' },
    { '', 'i', 'l' }, { '', 'o', ':' }, { '', 'k', 'n' },
    -- Shift combinations
    { '', 'F', 'E' }, { 'n', 'P', 'R' }, { 'x', 'P', 'R' }, { 'o', 'P', 'R' },
    { '', 'G', 'T' }, { '', 'J', 'Y' }, { '', 'L', 'U' }, { '', 'U', 'I' },
    { '', 'Y', 'O' }, { '', ':', 'P' }, { '', 'R', 'S' }, { '', 'S', 'D' },
    { '', 'T', 'F' }, { '', 'D', 'G' }, { '', 'N', 'J' }, { '', 'E', 'K' },
    { '', 'I', 'L' }, { '', 'O', ':' }, { '', 'K', 'N' },
    -- Ctrl combinations
    { '', '<C-s>', '<C-d>' }, { '', '<C-l>', '<C-u>' },
    -- Additional mappings
    { '', 'jj',    'yy' }, { '', 'dd', 'gg' }, { '', 'ss', 'dd' }
  }

  for _, m in ipairs(mappings) do
    local mode, from, to = unpack(m)
    vim.api.nvim_set_keymap(mode, from, to, { noremap = true })
  end
end

local function restore_qwerty()
  vim.cmd('mapclear')
  vim.cmd('mapclear!')
end

function _G.toggle_colemak_mapping()
  if vim.g.colemak_mapping == 1 then
    restore_qwerty()
    vim.g.colemak_mapping = 0
    print("QWERTY mapping activated")
  else
    colemak_to_qwerty()
    vim.g.colemak_mapping = 1
    print("Colemak mapping activated")
  end
end

-- Activate Colemak mapping on startup
colemak_to_qwerty()

-- Set toggle shortcut
vim.api.nvim_set_keymap('n', '<leader>cm', ':lua toggle_colemak_mapping()<CR>', { noremap = true, silent = true })

-- other keybindings
vim.api.nvim_set_keymap('n', '<C-n>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-e>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-i>', '<C-w>l', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>k', ':tabe ', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>m', ':tabp<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>.', ':tabn<cr>', { noremap = true })

-- Set some default settings
vim.cmd("set nornu")
vim.cmd("colorscheme newpaper")
vim.cmd("set wrap")
