require('telescope').setup {
    pickers = {
        lsp_references = {
            theme = "ivy"
        }
    }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>en', function()
    builtin.find_files {
        cwd = vim.fn.stdpath('config')
    }
end)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
