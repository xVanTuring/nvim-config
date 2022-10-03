local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_in_select = false,
}
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
-- vim.keymap.set('n', '<leader>ca', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', '<leader>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)

-- TODO: will be remove /unavaliable in 0.9.0 for range_code_action
-- vim.keymap.set('v', '<leader>ca', "<Cmd>'<,'>lua vim.lsp.buf.code_action()<CR>", opts)
-- similary to vscode's mini map But feel slow
-- vim.keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", { silent = true })
