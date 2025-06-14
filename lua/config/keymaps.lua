-- NOTE: Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- NOTE: local opts = { buffer = 0 }
--local neogit = require('neogit')

-- NOTE: change keymap Esc for jj
--map("i", "jj", "<Esc>", { noremap = true })

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

neoscroll = require("neoscroll")
local keymap = {
  ["u"] = function()
    neoscroll.ctrl_u({ duration = 250 })
  end,
  ["d"] = function()
    neoscroll.ctrl_d({ duration = 250 })
  end,
  ["<C-b>"] = function()
    neoscroll.ctrl_b({ duration = 450 })
  end,
  ["<C-f>"] = function()
    neoscroll.ctrl_f({ duration = 450 })
  end,
  ["<C-y>"] = function()
    neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 })
  end,
  ["<C-e>"] = function()
    neoscroll.scroll(0.1, { move_cursor = false, duration = 100 })
  end,
  ["zt"] = function()
    neoscroll.zt({ half_win_duration = 250 })
  end,
  ["zz"] = function()
    neoscroll.zz({ half_win_duration = 250 })
  end,
  ["zb"] = function()
    neoscroll.zb({ half_win_duration = 250 })
  end,
}
local modes = { "n", "v", "x" }
for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end

--fasdfasdfasdf
--fasdfasdfasdfa
