local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files theme=dropdown<CR>', opts)
vim.keymap.set('n', '<leader>fg', '<Cmd>Telescope live_grep theme=dropdown<CR>', opts)
vim.keymap.set('n', '<leader>fb', '<Cmd>Telescope buffers  theme=dropdown<CR>', opts)
vim.keymap.set('n', '<leader>fh', '<Cmd>Telescope help_tags  theme=dropdown<CR>', opts)
vim.keymap.set('n', '<leader>fr', '<Cmd>Telescope oldfiles  theme=dropdown<CR>', opts)

vim.keymap.set('n', '<leader>flo', '<Cmd>Telescope lsp_document_symbols theme=dropdown<CR>', opts)
vim.keymap.set('n', '<leader>flr', '<Cmd>Telescope lsp_references theme=dropdown<CR>', opts)
vim.keymap.set('n', '<leader>fld', '<Cmd>Telescope lsp_definitions theme=dropdown<CR>', opts)
