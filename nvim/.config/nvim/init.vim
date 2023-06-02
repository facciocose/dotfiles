call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
call plug#end()

lua require('config')

" Color scheme
colorscheme gruvbox
set background=dark

" basic settings
let mapleader="\<Space>"
set tabstop=4
set shiftwidth=4
"set number
"set relativenumber
"set mouse=a
"set clipboard+=unnamedplus
"set undofile
"filetype plugin on
"set autoindent
"set smartindent

"" telescope
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>

"" coq
"COQnow -s

"" easymotion
"map <Leader> <Plug>(easymotion-prefix)

