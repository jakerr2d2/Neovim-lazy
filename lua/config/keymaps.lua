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
map("n", "<leader><tab>k", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>j", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous Tab" })
map("n", "<leader><tab>l", "<cmd>BufferLineMoveNext<cr>", { desc = "Move Next Tab" })
map("n", "<leader><tab>h", "<cmd>BufferLineMovePrev<cr>", { desc = "Move Prev Tab" })

-- TODO: Add neogit
map("n", "<leader>gN", "<cmd>Neogit cwd=%:p:h<cr>", { desc = "Neogit (cwd) " })
map("n", "<leader>gn", "<cmd>Neogit<cr>", { desc = "Neogit (root dir) " })

--TODO:  Add Code Runner
map("n", "<leader>tU", ":RunCode<CR>", { noremap = true, silent = false })
map("n", "<leader>tu", ":RunFile<CR>", { noremap = true, silent = false })
map("n", "<leader>tv", ":RunFile tab<CR>", { noremap = true, silent = false })
map("n", "<leader>tV", ":RunProject<CR>", { noremap = true, silent = false })
map("n", "<leader>tw", ":RunClose<CR>", { noremap = true, silent = false })
map("n", "<leader>tW", ":CRFiletype<CR>", { noremap = true, silent = false })
map("n", "<leader>tx", ":CRProjects<CR>", { noremap = true, silent = false })

-- TODO: Add Maximize
map("n", "<leader>wz", "<cmd>WindowsMaximize<cr>", { desc = "Maximizw window" })
map("n", "<leader>wv", "<cmd>WindowsMaximizeVertically<cr>", { desc = "Maximize window vertically" })
map("n", "<leader>wh", "<cmd>WindowsMaximizeHorizontally<cr>", { desc = "maximize window horizontally" })
map("n", "<leader>we", "<cmd>WindowsEqualize<cr>", { desc = "Equalize windows" })

-- TODO: Add Organizate Windows
map("n", "<leader>wo", "<cmd>WinShift<cr>", { desc = "Organizate window" })

-- TODO: Add Ray
map("v", "<leader>ct", "<cmd>Ray<cr>", { desc = "Snap Code" })

-- TODO: Add LiveServer
map("n", "<leader>cp", "<cmd>LiveServerStart<cr>", { desc = "Liveserver start" })
map("n", "<leader>cQ", "<cmd>LiveServerStop<cr>", { desc = "LiveServer Stop" })
map("n", "<leader>cq", "<cmd>LiveServerToggle<cr>", { desc = "LiveServer Toggle" })

--TODO: Add Decisive
map("n", "<leader>cbc", ":lua require('decisive').align_csv({})<cr>", { desc = "align CSV", silent = true })
map("n", "<leader>cbs", ":lua require('decisive').align_csv_clear({})<cr>", { desc = "align CSV clear", silent = true })
map("n", "[x", ":lua require('decisive').align_csv_prev_col()<cr>", { desc = "align CSV prev col", silent = true })
map("n", "]z", ":lua require('decisive').align_csv_next_col()<cr>", { desc = "align CSV next col", silent = true })

--TODO: add csvlens
map("n", "<leader>cbz", "<cmd>Csvlens<cr>", { desc = "csv lens", silent = true })
