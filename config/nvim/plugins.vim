if &compatible
  set nocompatible
end

call plug#begin(stdpath('data') . '/plugged')

" Define bundles via Github repos
Plug 'christoomey/vim-run-interactive'

" Misc plugins (TODO: review these!)
Plug 'janko-m/vim-test'
Plug 'pbrisbin/vim-mkdir'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/tComment'

" Themes
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'

" Icons
Plug 'kyazdani42/nvim-web-devicons' " A lua fork of vim-devicons

" Language server
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'jose-elias-alvarez/null-ls.nvim'

" Language specific
Plug 'mogelbrod/vim-jsonpath'
Plug 'ellisonleao/glow.nvim' " Markdown previewer

" Interface - editor
Plug 'kyazdani42/nvim-tree.lua'
" Plug 'akinsho/bufferline.nvim'
Plug 'seblj/nvim-tabline'
Plug 'famiu/feline.nvim'
" Plug 'lambdalisue/nerdfont.vim'
Plug 'lukas-reineke/indent-blankline.nvim'

" Utilities - todos, snippets & formatting
Plug 'folke/todo-comments.nvim'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'windwp/nvim-autopairs'

" Utlities - git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'

" Other
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'folke/trouble.nvim'
Plug 'vim-test/vim-test'

call plug#end()
