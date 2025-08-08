return {
  -- NOTE: Add better escape for jk and jj
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- NOTE: Add comasemi
  {
    "saifulapm/commasemi.nvim",
    keys = {
      { "<Leader>,", desc = "Toggle comma" },
      { "<Leader>;", desc = "Toggle semicolon" },
    },
    opts = {
      leader = "<Leader>",
      keymaps = true,
      commands = true,
    },
  },

  -- NOTE: Smartcolumn for line of code
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "80",
      disabled_filetypes = {
        "NvimTree",
        "lazy",
        "mason",
        "help",
        "checkhealth",
        "lspinfo",
        "noice",
        "Trouble",
        "fish",
        "zsh",
        "help",
        "text",
        "markdown",
        "dashboard",
      },
      custom_colorcolumn = {},
      scope = "line",
    },
  },

  -- NOTE: Add code_runner
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("/complements/coderunner")
    end,
  },

  -- NOTE: Add overseer
  {
    "stevearc/overseer.nvim",
    opts = {},
  },

  -- NOTE: Add autosave
  {
    "0x00-ketsu/autosave.nvim",
    event = { "InsertLeave", "TextChanged" },
    config = function()
      require("autosave").setup({})
    end,
  },

  -- NOTE: Correct the text so that it is not so long
  {
    "preservim/vim-pencil",
    config = function()
      vim.g["pencil#textwidth"] = 80
      vim.g["pencil#wrapModeDefault"] = "soft"
      vim.cmd([[
          autocmd BufRead,BufNewFile * call pencil#init()
      ]])
    end,
  },

  -- NOTE: Add nvim-ufo
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
  },

  -- NOTE: Add nvim-origami
  {
    "chrisgrieser/nvim-origami",
    event = "VeryLazy",
    tag = "v1.9",
    opts = {},
    init = function()
      vim.opt.foldlevel = 99
      vim.opt.foldlevelstart = 99
    end,
  },

  -- NOTE: Add oil nvim
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },

  -- WARNING: MULTICURSORS IN NEOVIM

  -- NOTE: Multicursors
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = { "nvimtools/hydra.nvim" },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "multicursors",
      },
    },
  },

  -- NOTE: View Text
  {
    "wurli/visimatch.nvim",
    opts = {},
  },
}
