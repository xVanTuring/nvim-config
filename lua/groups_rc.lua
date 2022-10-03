-- 放一些简单的配置
require('lualine').setup()
require("nvim-surround").setup({})
require("nvim-autopairs").setup {}
require("toggleterm").setup{}
require('gitsigns').setup()
require('session_manager').setup({
   autoload_mode = require('session_manager.config').AutoloadMode.CurrentDir, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
})
require'alpha'.setup(require'alpha.themes.startify'.config)
require("nvim-tree").setup()

