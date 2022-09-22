" no more arrow keys
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

" Nerd Tree
map <leader>n :NERDTreeFocus<CR>
map <C-n> :NERDTree<CR>
map <C-S-n> :NERDTreeToggle<CR>

" Esape using ii
imap ii <Esc>
vmap ii <Esc>

" opens file in new tab
map gf <C-W>gf

" speed up navigating and resizing splits
map <C-j> <C-W><C-J>
map <C-k> <C-W><C-K>
map <C-l> <C-W><C-L>
map <C-h> <C-W><C-H>
map <lt> <C-W><lt>
map > <C-W>>
map - <C-W>-
map + <C-W>+

" Traditional keybinds
map <C-z> <Undo>
map <C-s> :w <CR>
map <C-y> u

" Change between 2 tab spaces and 4
map <C-4> :set ts=4 sts=4 sw=4<CR>
map <C-2> :set ts=2 sts=2 sw=2<CR>
