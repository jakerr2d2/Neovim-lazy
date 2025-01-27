require("dashboard").setup({
  theme = "hyper",
  hide = {
    -- this is taken care of by lualine
    -- enabling this messes up the actual laststatus setting after loading a file
    statusline = false,
  },
  config = {
    week_header = {
      enable = true,
      italic_comments = true,
    },
    shortcut = {
      {
        desc = "  Files ",
        group = "@property",
        action = "Telescope find_files",
        key = "f",
      },
      {
        desc = "󰒲  Lazy ",
        group = "Label",
        action = "Lazy",
        key = "l",
      },
      {
        desc = "  Lazy Extra",
        group = "DiagnosticHint",
        action = "LazyExtras",
        key = "j",
      },
      {
        desc = "󰊢  Git",
        group = "Number",
        action = "Neogit cwd=%:p:h",
        key = "n",
      },
      {
        desc = " Restore ",
        group = "DiagnosticHint",
        action = function()
          require("persistence").select()
        end,
        key = "z",
      },
      {
        desc = "  Exit",
        group = "@property",
        action = "qa",
        key = "e",
      },
    },
    --[[footer = {
        "  ",
        "  ",
        '"La oportunidad no toca la puerta, se presenta cuando derribas la puerta a golpes"',
        "ANONIMO",
      },]]
    footer = {
      "  ",
      "  ",
      --[['"Todo el Mundo esta en mi contra de lo contario no seria Justo"',
      "Anonimo",]]
      '"Sin Reservas, Sin Retorno, Sin Remordimiento"',
      "William Borden",
    },
  },
})
