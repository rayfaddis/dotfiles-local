set termguicolors
colorscheme onedark
"set background=dark
"call one#highlight('Normal', '000000', '000000' '')

set laststatus=2  " always display the status line
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands

" display line numbers
set number
set numberwidth=5

" whitespace characters
set list
set listchars=tab:▸\ ,nbsp:␣,lead:·,trail:·,extends:→,precedes:← " ,eol:¬
set showbreak=i↪\

" make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
