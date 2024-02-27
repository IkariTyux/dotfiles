vim.g.mapleader = " "
vim.keymap.set("n", "<M-e>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>qa", vim.cmd.quitall)
vim.keymap.set("n", "<M-w>", vim.cmd.write)
vim.keymap.set("n", "<M-q>", vim.cmd.BufferClose)
vim.keymap.set("n", "<M-S-q>", vim.cmd.quit)
vim.keymap.set("n", "<M-A-tab>", vim.cmd.BufferPrevious)
vim.keymap.set("n", "<M-tab>", vim.cmd.BufferNext)

--Windows movements--

vim.keymap.set("n", "<M-left>", "<C-W>h")
vim.keymap.set("n", "<M-right>", "<C-W>l")
vim.keymap.set("n", "<M-up>", "<C-W>k")
vim.keymap.set("n", "<M-down>", "<C-W>j")

vim.keymap.set("n", "<M-v>", vim.cmd.vsplit)
vim.keymap.set("n", "<M-h>", vim.cmd.split)

vim.keymap.set("n", "<C-Left>", "<C-w><")
vim.keymap.set("n", "<C-Right>", "<C-w>>")
vim.keymap.set("n", "<C-Up>", "<C-w>+")
vim.keymap.set("n", "<C-Down>", "<C-w>-")
