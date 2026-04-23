-- NOTE: Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- NOTE: Python options
local python3_path = vim.fn.systemlist("which python3")[1]
-- NOTE: vim.g.python3_host_prog = python3_path
--vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.python3_host_prog = vim.fn.system("poetry env info --path"):gsub("\n", "") .. "/bin/python"
vim.g.lazyvim_python_lsp = "pyright"

-- NOTE: Rust options
-- LSP Server to use for Rust.
-- Set to "bacon-ls" to use bacon-ls instead of rust-analyzer.
-- only for diagnostics. The rest of LSP support will still be
-- provided by rust-analyzer.
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"

-- NOTE: PHP options
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

-- NOTE: UFO Nvim
vim.o.foldcolumn = "1" -- NOTE: '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- NOTE: Las vistas solo se pueden contraer completamente con la línea de estado global
vim.opt.laststatus = 3

vim.o.showtabline = 1
vim.opt.sessionoptions = "curdir,folds,globals,help,tabpages,terminal,winsize"
