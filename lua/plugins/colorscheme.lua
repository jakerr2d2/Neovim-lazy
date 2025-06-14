return {
  -- NOTE: add catppuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = { "italic" },
        functions = {},
        keywords = { "italic" },
        strings = { "italic" },
        variables = { "italic" },
        numbers = { "italic" },
        booleans = { "italic" },
        properties = { "italic" },
        types = { "italic" },
        operators = { "italic" },
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      integrations = {
        aerial = true,
        cmp = true,
        dashboard = true,
        fidget = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        snacks = false,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
        octo = true,
      },
      custom_highlights = function()
        return {
          DashboardHeader = { fg = "#2ecc71" },
        }
      end,
    },
  },

  -- NOTE: add LazyVim colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
