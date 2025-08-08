local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {
  s("if", {
    t("if ("),
    i(1, "$condition"),
    t({ ") {", "\t" }),
    i(2),
    t({ "", "}" }),
  }),

  s("fn", {
    t("function "),
    i(1, "functionName"),
    t("("),
    i(2, "$args"),
    t({ ") {", "\t" }),
    i(3),
    t({ "", "}" }),
  }),

  s("class", {
    t("class "),
    i(1, "ClassName"),
    t({ "", "{", "\t" }),
    i(2),
    t({ "", "}" }),
  }),

  s("echo", {
    t("echo "),
    i(1, "'Hello World'"),
    t(";"),
  }),

  -- NOTE: Encabezado PHPDoc
  s("phpdoc", {
    t({
      "/**",
      ' * Script simple que muestra un mensaje de "Hola Mundo"',
      " *",
      " * PHP version 8.2",
      " *",
      " * @category ",
    }),
    i(1, "Demo"),
    t({ "", " * @package  " }),
    i(2, "HolaMundo"),
    t({ "", " * @author   " }),
    i(3, "Developer <developer@example.com>"),
    t({ "", " * @license  " }),
    i(4, "MIT License"),
    t({ "", " * @link     " }),
    i(5, "https://github.com/developer/hola-mundo"),
    t({ "", " */" }),
  }),

  -- NOTE: <?php ... ?>
  s("php", {
    t("<?php"),
    t({ "", "" }),
    i(1, "// código PHP"),
    t({ "", "" }),
    t("?>"),
  }),

  -- NOTE: print_r
  s("print_r", {
    t("print_r("),
    i(1),
    t(");"),
  }),

  -- NOTE: print
  s("print", {
    t("print "),
    i(1),
    t(";"),
  }),
}
