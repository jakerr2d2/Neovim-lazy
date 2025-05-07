local setlocal = vim.opt_local

--- Busca manage.py hacia arriba en la jerarquía de carpetas
---@return boolean
local function is_django_project()
  local root_file = vim.fs.find("manage.py", {
    upward = true,
    type = "file",
    stop = vim.loop.os_homedir(), -- deja de buscar si llega al home
  })

  return root_file[1] ~= nil
end

if is_django_project() then
  setlocal.filetype = "htmldjango"
end
