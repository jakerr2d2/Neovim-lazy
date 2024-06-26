-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- TODO: Python options
local python3_path = vim.fn.systemlist("which python3")[1]
--vim.g.python3_host_prog = python3_path
--vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.python3_host_prog = vim.fn.system("poetry env info --path"):gsub("\n", "") .. "/bin/python"
vim.g.lazyvim_python_lsp = "pyright"

-- TODO: Line
-- NOTE: Configurar el ajuste de línea
