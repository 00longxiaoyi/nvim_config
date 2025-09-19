local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typescript", {
  s("jsdoc", {
    t({ "/**", " * " }),
    i(1, "description"),
    t({ "", " * @param " }),
    i(2, "param"),
    t({ "", " * @returns " }),
    i(3, "return"),
    t({ "", " */" }),
  }),
})

ls.add_snippets("javascript", {
  s("jsdoc", {
    t({ "/**", " * " }),
    i(1, "description"),
    t({ "", " * @param " }),
    i(2, "param"),
    t({ "", " * @returns " }),
    i(3, "return"),
    t({ "", " */" }),
  }),
})
