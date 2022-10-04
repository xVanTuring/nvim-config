require('session_manager').setup({
  autoload_mode = require('session_manager.config').AutoloadMode.Disabled,
  -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>sl', '<Cmd>SessionManager load_last_session<CR>', opts)
vim.keymap.set('n', '<leader>ss', '<Cmd>SessionManager load_session<CR>', opts)
