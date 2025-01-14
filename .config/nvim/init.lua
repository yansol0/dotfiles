require("boxman")

vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
vim.cmd('colorscheme darcula-solid')
vim.cmd('set termguicolors')
vim.cmd [[autocmd BufNewFile,BufRead *.vue set filetype=vue]]

