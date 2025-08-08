-- NOTE: Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- NOTE: Add quit and save all
map("n", "<leader>qr", "<cmd>wq<cr>", { desc = "Quit and save all" })

-- NOTE: Add only quit
map("n", "<leader>qe", "<cmd>q<cr>", { desc = "Quit" })

-- NOTE: Quit d
map("n", "b", "d", { desc = "Quit" })
map("v", "b", "d", { desc = "Quit" })

-- NOTE: Regresar u
map("n", "m", "u", { desc = "Return" })

-- NOTE: Add whichkey and create application maps.
require("complements.whichkey")
