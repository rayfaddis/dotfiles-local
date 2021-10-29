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
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'janko-m/vim-test'
Plug 'pangloss/vim-javascript'
Plug 'pbrisbin/vim-mkdir'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/tComment'

if g:has_async
  Plug 'dense-analysis/ale'
endif

" themes
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'

" icons
Plug 'kyazdani42/nvim-web-devicons' " A lua fork of vim-devicons

" language specific
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'mogelbrod/vim-jsonpath'

" interface - NERDTree
Plug 'preservim/nerdtree'

" interface - editor
Plug 'itchyny/lightline.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'Yggdroot/indentLine'

" utilities - todos
Plug 'folke/todo-comments.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

" utilities - snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" utlities - git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-test/vim-test'

call plug#end()
