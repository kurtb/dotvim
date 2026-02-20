" NOTE: This config has been superseded by the Neovim config in nvim/.
" See nvim/init.lua for the current configuration.
" To use: ln -s ~/dev/dotvim/nvim ~/.config/nvim

execute pathogen#infect()

syntax on
filetype plugin indent on

:set tabstop=4
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set smarttab


"  Terminals (like gnome) have issues with alt key
map <Esc>j <A-j>
map <Esc>k <A-k>

"  https://vim.fandom.com/wiki/Moving_lines_up_or_down#:~:text=In%20normal%20mode%20or%20in,to%20move%20the%20block%20up.
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

:set backspace=indent,eol,start
