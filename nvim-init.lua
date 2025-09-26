-- Numbers & Indent
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Scrolling
vim.keymap.set("n", "<C-Up>", "<C-y>")
vim.keymap.set("n", "<C-Down>", "<C-e>")
vim.keymap.set("n", "<C-k>", "<C-y>")
vim.keymap.set("n", "<C-j>", "<C-e>")

-- Langmap (Russian -> English)
vim.opt.langmap =
  "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ," ..
  "фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- Leader
vim.g.mapleader = ";"

-- Clipboard
vim.keymap.set({"n","v"}, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>yy", '"+yy')
vim.keymap.set({"n","v"}, "<leader>d", '"+d')
vim.keymap.set("n", "<leader>dd", '"+dd')
vim.keymap.set({"n","v"}, "<leader>p", '"+p')
vim.keymap.set({"n","v"}, "<leader>P", '"+P')

-- Colors & Transparency
vim.opt.termguicolors = true
vim.cmd [[
  hi Normal guibg=none ctermbg=none
  hi NormalFloat guibg=none ctermbg=none
]]
