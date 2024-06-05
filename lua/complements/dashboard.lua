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
      italic_comments = false,
    },
    shortcut = {
      {
        desc = " Files ",
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
        desc = "󰊢 Git ",
        group = "Number",
        action = "Neogit cwd=%:p:h",
        key = "n",
      },
      {
        desc = " Restore ",
        group = "DiagnosticHint",
        action = function()
          require("persistence").load()
        end,
        key = "z",
      },
      {
        desc = " Exit ",
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
      '"Tu futuro aún no ha sido escrito. Nadie lo ha hecho. Tu futuro es lo que hagas. ¡Así que hazlo bueno!s"',
      "DOC BROWN",
    },
  },
})
