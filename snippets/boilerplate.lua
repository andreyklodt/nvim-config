local ls = require("luasnip")

local group = vim.api.nvim_create_autgroup("Lua Snippets", { clear = true })
local file_pattern = "*.lua"

return snippets, autosnippets
