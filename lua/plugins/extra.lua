return {
  {
    --TODO: add code_runner
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
      require("drop").setup({ theme = "leaves", filetypes = { "Dashboard" } })
    end,
  },
  {
    --TODO: add autosave
    "0x00-ketsu/autosave.nvim",
    -- lazy-loading on events
    event = { "InsertLeave", "TextChanged" },
    config = function()
      require("autosave").setup({})
    end,
  },
  {
    --TODO: add ray
    "sudoerwx/vim-ray-so-beautiful",
    event = "VeryLazy",
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
}
