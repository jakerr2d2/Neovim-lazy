return {
  "L3MON4D3/LuaSnip",
  opts = function(_, opts)
    local luasnip = require("luasnip")

    -- NOTE: Asegúrate de extender django-html después de cargar los snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- NOTE: 👇 Aquí está la extensión importante
    luasnip.filetype_extend("htmldjango", { "html" })
    luasnip.filetype_extend("django-html", { "html" })

    return opts
  end,
}
