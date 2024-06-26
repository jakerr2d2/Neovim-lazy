return {
  {
    -- TODO: add code_runner
    "CRAG666/code_runner.nvim",
    config = function()
      require("/complements/coderunner")
    end,
  },
  {
    -- NOTE: Hermoso efecto de lluvia de objetos en Neovim
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
      require("drop").setup({ theme = "snow", filetypes = { "Dashboard" } })
    end,
  },
  {
    -- TODO: add autosave
    "0x00-ketsu/autosave.nvim",
    -- lazy-loading on events
    event = { "InsertLeave", "TextChanged" },
    config = function()
      require("autosave").setup({})
    end,
  },
  {
    -- TODO: add ray
    "sudoerwx/vim-ray-so-beautiful",
    event = "VeryLazy",
  },
  {
    -- TODO: Mayusculas en SQL
    "jsborjesson/vim-uppercase-sql",
    dependencies = "vim-dadbod",
  },
  {
    "preservim/vim-pencil",
    config = function()
      -- Configuración de vim-pencil
      vim.g["pencil#textwidth"] = 80
      vim.g["pencil#wrapModeDefault"] = "soft"
      vim.cmd([[
        autocmd BufRead,BufNewFile * call pencil#init()
      ]])

      -- Activar vim-pencil automáticamente en ciertos tipos de archivo
      --[[vim.cmd([[
        autocmd FileType markdown,mkd,text call pencil#init()
      ]]
    end,
  },
}
