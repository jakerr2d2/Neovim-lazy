-- You can set formatters_by_ft and formatters directly
require("conform").formatters_by_ft.htmldjango = { "djlint" }
require("conform").formatters_by_ft.mysql = { "sqlfluff" }
require("conform").formatters_by_ft.sh = { "shellharden" }
require("conform").formatters_by_ft.php = { "phpcbf" }
require("conform").formatters_by_ft.xml = { "xmllint" }

-- NOTE: Telescope
require("telescope").load_extension("find_template")
