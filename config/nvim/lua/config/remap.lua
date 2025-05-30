vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", { silent = true , expr = true })
