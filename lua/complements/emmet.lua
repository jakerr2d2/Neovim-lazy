-- NOTE: Is emmet_ls setup
local lspconfig = require("lspconfig")
local capabilitiesE = vim.lsp.protocol.make_client_capabilities()
capabilitiesE.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
  -- NOTE: on_attach = on_attach,
  capabilities = capabilitiesE,
  filetypes = {
    "html",
    "typescriptreact",
    "javascriptreact",
    "css",
    "sass",
    "scss",
    "less",
    "htmldjango",
    "django-html",
  },
  init_options = {
    html = {
      options = {
        -- NOTE: For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  },
})
