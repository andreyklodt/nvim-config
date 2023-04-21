vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- open folder

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- swap current line with +1k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- swap current line with +1j

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move down and zz
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move up and zz
vim.keymap.set("n", "n", "nzzzv")       -- vertical and horizontal orientation on next
vim.keymap.set("n", "N", "Nzzzv")       -- same on prev

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- copy whole line

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- format code

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>bb", "<C-^>")

-- matching brace
vim.keymap.set("i", "[", "[<CR>]<Esc>ko")
vim.keymap.set("i", "{", "{<CR>}<Esc>ko")
vim.keymap.set("i", "(", "()<Esc>i")
vim.keymap.set("i", '"', '""<Esc>i')
vim.keymap.set("i", "'", "''<Esc>i")
vim.keymap.set("i", "`", "``<Esc>i")
vim.keymap.set("i", "<", "<><Esc>i")
