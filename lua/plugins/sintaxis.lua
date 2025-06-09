return {

  -- NOTE: add nvim_context_vt
  {
    "andersevenrud/nvim_context_vt",
    depndencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim_context_vt").setup({})
    end,
  },

  -- NOTE: add nvim-navbuddy
  {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = { lsp = { auto_attach = true } },
  },

  -- NOTE: enable live server
  {
    "ngtuonghy/live-server-nvim",
    event = "VeryLazy",
    build = ":LiveServerInstall",
    config = function()
      require("live-server-nvim").setup({})
    end,
  },

  -- NOTE: Improve Treesitter highlighting
  {
    "m-demare/hlargs.nvim",
  },

  -- NOTE: add better escape for jk and jj
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- NOTE: smartcolumn for line of code
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

  -- NOTE: add dropbar
  {
    "Bekaboo/dropbar.nvim",
    -- optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
  },
  -- WARNING: PLUGINS FOR CSV

  -- TODO: add decisive
  {
    "emmanueltouzery/decisive.nvim",
  },

  -- TODO: add csvlens
  {
    "theKnightsOfRohan/csvlens.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
    },
    config = true,
    opts = { --[[ Place your opts here ]]
    },
  },

  -- WARNING: PLUGINS FOR JAVA

  -- TODO: add maven for java
  {
    "eatgrass/maven.nvim",
    cmd = { "Maven", "MavenExec" },
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("maven").setup({
        executable = "./mvnw",
      })
    end,
  },

  -- WARNING: MULTICURSORS IN NEOVIM

  -- TODO: multicursors
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvimtools/hydra.nvim",
    },
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

  -- TODO: View Text.
  {
    "wurli/visimatch.nvim",
    opts = {},
  },
}
