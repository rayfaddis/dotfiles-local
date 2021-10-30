if &compatible
  set nocompatible
end

" Remove declared plugins
function! s:UnPlug(plug_name)
  if has_key(g:plugs, a:plug_name)
    call remove(g:plugs, a:plug_name)
  endif
endfunction
command!  -nargs=1 UnPlug call s:UnPlug(<args>)

call plug#begin(stdpath('data') . '/plugged')

" Define bundles via Github repos
Plug 'christoomey/vim-run-interactive'

" If fzf has already been installed via Homebrew, use the existing fzf
" Otherwise, install fzf. The `--all` flag makes fzf accessible outside of vim
if isdirectory("/usr/local/opt/fzf")
  Plug '/usr/local/opt/fzf'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
endif

Plug 'junegunn/fzf.vim'
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

" themes
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'

" icons
Plug 'kyazdani42/nvim-web-devicons' " A lua fork of vim-devicons

" language server
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" language specific
Plug 'mogelbrod/vim-jsonpath'

" interface - editor
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim'
Plug 'famiu/feline.nvim'
" Plug 'lambdalisue/nerdfont.vim'
Plug 'lukas-reineke/indent-blankline.nvim'

" utilities - todos, snippets & formatting
Plug 'folke/todo-comments.nvim'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'windwp/nvim-autopairs'

" utlities - git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

" other
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/trouble.nvim'
Plug 'vim-test/vim-test'

call plug#end()
