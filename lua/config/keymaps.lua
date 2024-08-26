-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
--local opts = { buffer = 0 }
--local neogit = require('neogit')

--TODO: change keymap Esc for jj
--map("i", "jj", "<Esc>", { noremap = true })

-- TODO: Add quit and save all
map("n", "<leader>qr", "<cmd>wq<cr>", { desc = "Quit and save all" })

-- TODO: Add only quit
map("n", "<leader>qe", "<cmd>q<cr>", { desc = "Quit" })

-- TODO: Add whichkey and create application maps.
require("complements.whichkey")
