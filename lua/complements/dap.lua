-- Obtener la ruta de Python3 desde Neovim
local python3_path = vim.fn.systemlist("which python3")[1]
vim.g.python3_host_prog = python3_path

-- NOTE: Cargar el complemento nvim-dap
local dap = require("dap")

-- NOTE: local ruta = "/home/bushido/.cache/pypoetry/virtualenvs/invasores-sK6nis5H-py3.11/bin/python3"
-- local ruta = "/home/bushido/.cache/pypoetry/virtualenvs/poetry-demo-JFmMvG2Z-py3.11/bin/python3"
local ruta = python3_path

-- NOTE: Configuración para Python
dap.adapters.python = {
  type = "executable",
  command = ruta,
  args = { "-m", "debugpy.adapter" },
}

-- NOTE: Configuración para iniciar el depurador de Python (debugpy)
dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    pythonPath = ruta,
    console = "integratedTerminal",
  },
  {
    type = "python",
    request = "launch",
    name = "Launch file with arguments (justMyCode = false)",
    program = "${file}",
    justMyCode = false,
    args = function()
      local args_string = vim.fn.input("Arguments: ")
      return vim.split(args_string, " +")
    end,
  },
  {
    type = "python",
    request = "launch",
    name = "Launch file (console = integratedTerminal, justMyCode = false)",
    program = "${file}",
    console = "integratedTerminal",
    justMyCode = false,
    -- pythonPath = opts.pythonPath,
  },
  {
    type = "python",
    request = "launch",
    name = "Launch file with arguments (console = integratedTerminal, justMyCode = false)",
    program = "${file}",
    console = "integratedTerminal",
    justMyCode = false,
    -- pythonPath = opts.pythonPath,
    args = function()
      local args_string = vim.fn.input("Arguments: ")
      return vim.split(args_string, " +")
    end,
  },
}
