require("dbee").setup({
  -- Configuración opcional de fuentes de conexión
  sources = {
    require("dbee.sources").MemorySource:new({
      -- Aquí puedes agregar tus conexiones
      {
        name = "mi_postgres",
        type = "postgres",
        url = "postgresql://usuario:password@localhost:5432/mi_base_datos",
      },
      {
        name = "mi_mysql",
        type = "mysql",
        url = "mysql://usuario:password@localhost:3306/mi_base_datos",
      },
      {
        name = "mi_sqlite",
        type = "sqlite",
        url = "/ruta/a/mi/base.db",
      },
    }),
  },
})
