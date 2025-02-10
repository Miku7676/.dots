return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope search files' })
        vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>sg', builtin.git_files, { desc = '[s]earch find [G]it files' })
        vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
        vim.keymap.set('n', '<leader>sB', builtin.builtin, { desc = '[S]earch  [B]uiltin' })
        vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = '[S]earch  [B]uffers' })
        vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
        vim.keymap.set('n', '<leader>r', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
        vim.keymap.set('n', '<leader>g', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end, { desc = 'Search by [G]rep' })
    end
}
