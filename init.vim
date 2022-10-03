call plug#begin()

Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'Mofiqul/vscode.nvim'
Plug 'junegunn/fzf'
" https://github.com/kyazdani42/nvim-web-devicons 
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'kyazdani42/nvim-tree.lua'

" bottom line 
Plug 'nvim-lualine/lualine.nvim'

Plug 'editorconfig/editorconfig-vim'

" vertical line
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'tpope/vim-commentary'
" terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}


" Session
Plug 'nvim-lua/plenary.nvim'
Plug 'Shatur/neovim-session-manager'
Plug 'numToStr/FTerm.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'mfussenegger/nvim-dap'
" First Screen
Plug 'goolord/alpha-nvim'
" Git
Plug 'lewis6991/gitsigns.nvim'


" CMP-LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind.nvim'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }

Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'windwp/nvim-autopairs'

Plug 'kylechui/nvim-surround'
Plug 'MunifTanjim/prettier.nvim'
call plug#end()



" Theme & Visual
lua require("visual_rc")
" basic edit:
let mapleader=' '
set mouse+=a
set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
filetype plugin indent on
set nocompatible 
set hlsearch
set nowritebackup
syntax on
imap jk <Esc>
nnoremap H ^
nnoremap L g_
nnoremap <A-d> <C-d>
nnoremap <A-u> <C-u>
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END
set clipboard+=unnamedplus

" json with comments
autocmd FileType json syntax match Comment +\/\/.\+$+



" fzf telescope
nnoremap <leader>ff <cmd>Telescope find_files theme=dropdown<cr>
nnoremap <leader>fg <cmd>Telescope live_grep theme=dropdown<cr>
nnoremap <leader>fb <cmd>Telescope buffers theme=dropdown<cr>
nnoremap <leader>fh <cmd>Telescope help_tags theme=dropdown<cr>

" tree.nvim
:nmap <leader>e <Cmd>NvimTreeToggle<CR>


" Terminal
:tnoremap <Esc> <C-\><C-n> " Esc To Exit
:nnoremap <A-i> <CMD>lua require("FTerm").toggle()<CR>
:tnoremap <A-i> <C-\><C-n><CMD>lua require("FTerm").toggle()<CR>

" Split & Nav
nmap <A-\>    <CMD>vsplit<CR><C-w>l
nmap <A-Bar>  <CMD>split<CR><C-w>j


" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferLineMovePrev<CR>
nnoremap <silent>    <A->> <Cmd>BufferLineMoveNext<CR>
nnoremap <silent>    <Leader>w <Cmd>bd<CR>

nnoremap <silent>    <Tab> <Cmd>BufferLineCycleNext<CR>
nnoremap <silent>    <S-Tab> <Cmd>BufferLineCyclePrev<CR>

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-q> <Cmd>q<CR>
nnoremap <A-Tab> <C-w>w
" For terminal
tnoremap <A-Tab> <C-\><C-n><C-w>w

" resize current buffer by +/- 5 
nnoremap <A-left> :vertical resize -5<cr>
nnoremap <A-down> :resize +5<cr>
nnoremap <A-up> :resize -5<cr>
nnoremap <A-right> :vertical resize +5<cr>

" With this maps you can now toggle the terminal
nnoremap <A-`> <CMD>ToggleTerm<CR> 
tnoremap <A-`> <C-\><C-n><CMD>ToggleTerm<CR>

lua require("lsp_rc")
lua require("lspsaga_rc")
lua require("cmp_rc")
lua require("null_ls_rc")
lua require("prettier_rc")
lua require("groups_rc")
lua require("bufferline_rc")
