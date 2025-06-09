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
}
