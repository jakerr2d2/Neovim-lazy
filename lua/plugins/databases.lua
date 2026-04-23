return {
  --[[
           {
              id = "ventas",
              name = "compradores",
              type = "postgres",
              url = "postgresql://bushido:qwerty41127@localhost:5432/cliente?sslmode=disable",
  ]]
  {
    "kndndrj/nvim-dbee",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install()
    end,
    config = function()
      require("dbee").setup({
        require("dbee.sources").EnvSource:new("DBEE_CONNECTIONS"),
        require("dbee.sources").FileSource:new(vim.fn.stdpath("cache") .. "/dbee/persistence.json"),
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "MattiasMTS/cmp-dbee",
        dependencies = {
          { "kndndrj/nvim-dbee" },
        },
        ft = "sql",
        opts = {},
      },
    },
    opts = function(_, opts)
      -- agrega la nueva fuente sin eliminar las existentes
      table.insert(opts.sources, { name = "cmp-dbee" })
    end,
  },
}
