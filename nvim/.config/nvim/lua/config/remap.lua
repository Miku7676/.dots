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

--opening a new pane
vim.keymap.set("n", "<leader>|", function()
  require('telescope.builtin').find_files({
    attach_mappings = function(prompt_bufnr, map)
      local actions = require('telescope.actions')
      local action_state = require('telescope.actions.state')

      map('i', '<CR>', function()
        local selection = action_state.get_selected_entry()
        if selection and selection.path then
          actions.close(prompt_bufnr)  -- Close first to avoid picker issues
          vim.cmd("vert new " .. vim.fn.fnameescape(selection.path))
        end
      end)

      return true
    end
  })
end, { noremap = true, silent = true })

-- horizontal
vim.keymap.set("n", "<leader>-", function()
  require('telescope.builtin').find_files({
    attach_mappings = function(prompt_bufnr, map)
      local actions = require('telescope.actions')
      local action_state = require('telescope.actions.state')

      map('i', '<CR>', function()
        local selection = action_state.get_selected_entry()
        if selection and selection.path then
          actions.close(prompt_bufnr)  -- Close first to avoid picker issues
          vim.cmd("new " .. vim.fn.fnameescape(selection.path))
        end
      end)

      return true
    end
  })
end, { noremap = true, silent = true })

-- tab remaps
vim.keymap.set("n", "<leader>1", "1gt", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>2", "2gt", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>3", "3gt", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>4", "4gt", {noremap = true, silent = true})
-- vim.keymap.set("n", "<leader>5", "5gt", {noremap = true, silent = true})
-- vim.keymap.set("n", "<leader>6", "6gt", {noremap = true, silent = true})
-- vim.keymap.set("n", "<leader>7", "7gt", {noremap = true, silent = true})
-- vim.keymap.set("n", "<leader>8", "8gt", {noremap = true, silent = true})
-- vim.keymap.set("n", "<leader>9", "9gt", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>0", ":tablast<cr>", {noremap = true, silent = true})
