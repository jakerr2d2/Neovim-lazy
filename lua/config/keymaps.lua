-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
--local neogit = require('neogit')

--TODO: change keymap Esc for jj
map("i", "jj", "<Esc>", { noremap = true })

-- TODO: add quit and save all
map("n", "<leader>qr", "<cmd>wq<cr>", { desc = "Quit and save all" })

-- TODO: add only quit
map("n", "<leader>qe", "<cmd>q<cr>", { desc = "Quit" })

--TODO: add tabs
map("n", "<leader><tab>p", "<cmd>BufferLinePick<cr>", { desc = "Pick Tab" })
map("n", "<leader><tab>q", "<cmd>BufferLinePickClose<cr>", { desc = "Pick Close Tab" })
map("n", "<leader><tab>j", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>k", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous Tab" })
map("n", "<leader><tab>l", "<cmd>BufferLineMoveNext<cr>", { desc = "Move Next Tab" })
map("n", "<leader><tab>h", "<cmd>BufferLineMovePrev<cr>", { desc = "Move Prev Tab" })

-- TODO: add neogit
map("n", "<leader>gN", "<cmd>Neogit cwd=%:p:h<cr>", { desc = "Neogit (cwd) " })
map("n", "<leader>gn", "<cmd>Neogit<cr>", { desc = "Neogit (root dir) " })
