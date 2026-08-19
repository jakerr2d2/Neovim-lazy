return {

  -- NOTE: add terminal
  {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 45,
        open_mapping = [[<C-\>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = "1",
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        persist_size = true,
        direction = "vertical", -- Puede ser 'horizontal', 'vertical' o 'float'
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = "curved",
          winblend = 8,
        },
      })
    end,
  },

  -- NOTE: add ranger
  {
    "kelly-lin/ranger.nvim",
    event = "VeryLazy",
    config = function()
      require("ranger-nvim").setup({ replace_netrw = true })
      --[[vim.api.nvim_set_keymap("n", "<leader>fa", "", {
        noremap = true,
        callback = function()
          require("ranger-nvim").open(true)
        end,
      })]]
      --
    end,
  },

  -- WARNING: se agrega el event= "VeryLazy" para que se cargue el plugin de manera diferida y no afecte el tiempo de inicio de Neovim.
}
