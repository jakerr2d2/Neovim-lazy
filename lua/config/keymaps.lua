-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
--local neogit = require('neogit')

--TODO: change keymap Esc for jj
map("i", "jj", "<Esc>", { noremap = true })

-- TODO: Add quit and save all
map("n", "<leader>qr", "<cmd>wq<cr>", { desc = "Quit and save all" })

-- TODO: Add only quit
map("n", "<leader>qe", "<cmd>q<cr>", { desc = "Quit" })

--TODO:  Add tabs
map("n", "<leader><tab>p", "<cmd>BufferLinePick<cr>", { desc = "Pick Tab" })
map("n", "<leader><tab>q", "<cmd>BufferLinePickClose<cr>", { desc = "Pick Close Tab" })
map("n", "<leader><tab>j", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>k", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous Tab" })
map("n", "<leader><tab>l", "<cmd>BufferLineMoveNext<cr>", { desc = "Move Next Tab" })
map("n", "<leader><tab>h", "<cmd>BufferLineMovePrev<cr>", { desc = "Move Prev Tab" })

-- TODO: Add neogit
map("n", "<leader>gN", "<cmd>Neogit cwd=%:p:h<cr>", { desc = "Neogit (cwd) " })
map("n", "<leader>gn", "<cmd>Neogit<cr>", { desc = "Neogit (root dir) " })

--TODO:  Add Code Runner
map("n", "<leader>cpr", ":RunCode<CR>", { noremap = true, silent = false })
map("n", "<leader>cpf", ":RunFile<CR>", { noremap = true, silent = false })
map("n", "<leader>cpt", ":RunFile tab<CR>", { noremap = true, silent = false })
map("n", "<leader>cpp", ":RunProject<CR>", { noremap = true, silent = false })
map("n", "<leader>cpc", ":RunClose<CR>", { noremap = true, silent = false })
map("n", "<leader>cpy", ":CRFiletype<CR>", { noremap = true, silent = false })
map("n", "<leader>cpj", ":CRProjects<CR>", { noremap = true, silent = false })

-- TODO: Add Maximize
map("n", "<leader>wz", "<cmd>WindowsMaximize<cr>", { desc = "Maximizw window" })
map("n", "<leader>wv", "<cmd>WindowsMaximizeVertically<cr>", { desc = "Maximize window vertically" })
map("n", "<leader>wh", "<cmd>WindowsMaximizeHorizontally<cr>", { desc = "maximize window horizontally" })
map("n", "<leader>we", "<cmd>WindowsEqualize<cr>", { desc = "Equalize windows" })

-- TODO: Add Organizate Windows
map("n", "<leader>wo", "<cmd>WinShift<cr>", { desc = "Organizate window" })
