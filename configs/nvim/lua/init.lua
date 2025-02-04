require('plugins')

-- Lucky's NVIM configuration properties
-- It must live in your home directory as ~/.config/nvim/lua/init.lua

-- ========== Pasting options ============

-- Toggles pasting mode. What it essentially does is does not autoindent pasted text when toggled
-- vim.opt.pastetoggle = "<F2>"

-- =======================================
-- ========== Indention options ==========

-- Toggles auto indentation
vim.opt.autoindent = true

-- =======================================
-- ========== Search options =============

-- Enable search highlighting
vim.opt.hlsearch = true

-- Ignores cases when searching
vim.opt.ignorecase = true

-- Incremental search that shows partial matches
vim.opt.incsearch = true

-- Automatically switches search to case-sensitive when search query contains an uppercase letter
vim.opt.smartcase = true

-- =======================================
-- ====== Text rendering options =========

-- Use encoding that supports unicode
vim.opt.encoding = "utf-8"

-- Avoid wrapping a line in the middle of a word
vim.opt.linebreak = true

-- Toggles syntax highlighting
vim.opt.syntax = on

-- =======================================
-- ======= User interface options ========

-- Always display the status bar
vim.opt.laststatus = 2

-- Show line numbers on the sidebar
vim.opt.number = true

-- =============================================
-- ==== Key mappings / global configuration ====

local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Remap the leader key to spcae
vim.g.mapleader = ' '

-- Custom key remaps

keymap("n", "<C-p>", "<Cmd>FZF<CR>", default_opts)
keymap("n", "tn", "<Cmd>:tabnew<CR>", default_opts)

-- Color theme
vim.g.colors_name = 'gloombuddy'

