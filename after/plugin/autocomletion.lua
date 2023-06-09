local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'
local ls = require 'luasnip'

cmp.setup({
    snippet = {
        expand = function(args)
            ls.lsp_expand(args.body)
            ls.filetype_extend("javascript", { "javascriptreact" })
            ls.filetype_extend("javascript", { "html" })
        end,
    },
    -- add c-Space in visual mode
    cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    }),
    formatting = {
        format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
    }
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

-- luasnip config
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })

ls.config.set_config({
    history = true,
    updateevents = "TextChanged, TextChangedI",
    enable_autosnippets = true,
    ext_opts = {
        [require("luasnip.util.types").choiceNode] = {
            active = {
                virt_text = { { "●", "GruvboxOrange" } }
            }
        }
    }
})

vim.keymap.set({"i", "s"}, "<a-p>", function ()
    if ls.expand_or_jumpable() then
        ls.expand()
    end
end)

vim.keymap.set({"i", "s"}, "<a-j>", function ()
    if ls.expand_or_jumpable(-1) then
        ls.expand(-1)
    end
end)

vim.keymap.set({"i", "s"}, "<a-l>", function ()
    if ls.expand_or_jumpable() then
        ls.expand(1)
    end
end)

vim.keymap.set({"i", "s"}, "<a-h>", function ()
    if ls.expand_or_jumpable() then
        ls.expand(-1)
    end
end)

