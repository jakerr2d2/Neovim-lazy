-- WARNING: PLUGINS FOR JAVA
return {

  -- NOTE: add maven for java
  {
    "eatgrass/maven.nvim",
    cmd = { "Maven", "MavenExec" },
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("maven").setup({
        --executable = "./mvnw",
        executable = "mvn",
        cwd = nil, -- work directory, default to `vim.fn.getcwd()`
        settings = nil, -- specify the settings file or use the default settings
        terminal = {
          size = 15,
          direction = "horizontal", -- o "vertical", "float"
          close_on_exit = false,
          auto_scroll = true,
        },
        commands = { -- add custom goals to the command list
          { cmd = { "clean", "compile" }, desc = "Limpiar y compilar" },
          { cmd = { "compile", "exec:java" }, desc = "Compilar y ejecutar" },
        },
      })
    end,
  },
}
