:set number
:set relativenumber
:set nocompatible

call plug#begin()
	Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
	Plug 'https://github.com/nvim-telescope/telescope.nvim'
	Plug 'https://github.com/dense-analysis/ale'
	Plug 'https://github.com/fatih/vim-go'
	Plug 'https://github.com/nvim-lualine/lualine.nvim'

	Plug 'https://github.com/lucastrvsn/kikwis'
	Plug 'https://github.com/lmburns/kimbox'
	Plug 'https://github.com/Shatur/neovim-ayu'
call plug#end()

lua << END
require('lualine').setup()
END

:colorscheme kimbox

"Save with CTRL + S
nnoremap <C-s> :w
inoremap <C-s> <Esc>:w<cr>a

