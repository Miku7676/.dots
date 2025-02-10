vim.g.mapleader = " "
vim.api.nvim_set_keymap('i', '<Esc>', '<Esc>', { noremap = true, silent = true })
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.listchars = {tab = '..', trail = '·', nbsp = '␣' }
vim.opt.scrolloff = 10
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- go to netrw view
vim.keymap.set("n", "<Esc>", '<cmd>nohlsearch<CR>')
vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)
