require('rose-pine').setup({
    disable_background = true
})

vim.o.background = "dark"

require('gruvbox').setup({
    contrast = "hard",
    transparent_mode = true,
    invert_tabline = false,
    invert_signs = true, -- знаки слева w, e
})

function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils('gruvbox')

