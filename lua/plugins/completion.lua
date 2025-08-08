return {
  -- NOTE: Add to Luasnip
  "L3MON4D3/LuaSnip",
  opts = function(_, opts)
    local luasnip = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()

    luasnip.filetype_extend("htmldjango", { "html" })
    luasnip.filetype_extend("django-html", { "html" })

    require("luasnip.loaders.from_lua").lazy_load({
      paths = { "~/.config/nvim/lua/snippets" },
    })

    return opts
  end,

  -- NOTE: Add Template
  {
    "glepnir/template.nvim",
    cmd = { "Template", "TemProject" },
    config = function()
      require("template").setup({
        temp_dir = "~/.config/nvim/templates/",
        author = "bushido",
        email = "bushido@pm.me",
      })
    end,
  },
}
