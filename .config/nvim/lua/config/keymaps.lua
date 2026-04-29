local map = vim.keymap.set
local cmd = vim.cmd
local opts = { noremap = true, silent = true }

map("n", "<M-h>", "<C-w>h")
map("n", "<M-j>", "<C-w>j")
map("n", "<M-k>", "<C-w>k")
map("n", "<M-l>", "<C-w>l")

map("n", "<M-v>", "<C-w>v")
map("n", "<M-s>", "<C-w>s")
map("n", "<M-q>", "<C-w>c")
map("n", "<M-e>", cmd.NvimTreeToggle)
map("n", "<M-BS>", "<cmd>25 split term://bash<cr>")
map("t", "ESC", "<C-\\><C-n><CR>", opts)
