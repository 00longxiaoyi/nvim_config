local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- 添加单行注释
ls.add_snippets("python", {
  s("funcdoc", {
    t('""" '),
    i(1, "Function description"), -- 光标停在引号中间
    t(' """'),
  }),
})

-- 添加函数多行注释
ls.add_snippets("python", {
  s("funcsdoc", {
    t('"""'),
    i(1, "Function description"),
    t({ "", "" }),
    t("Args:"),
    t({ "", "" }),
    t("    "),
    i(2, "param1 (type): description"),
    t({ "", "" }),
    t("Returns:"),
    t({ "", "" }),
    t("    "),
    i(3, "return type: description"),
    t({ "", '"""' }),
  }),
})
