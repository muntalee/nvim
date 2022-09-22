source ~/.config/nvim-vim/config/nerdtree.vim
source ~/.config/nvim-vim/config/coc.vim
source ~/.config/nvim-vim/config/keybinds.vim
source ~/.config/nvim-vim/config/plug.vim

luafile ~/.config/nvim-vim/lua/treesitter.lua
autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/template.cpp
autocmd BufNewFile *.java 0r ~/.config/nvim/templates/template.java
autocmd BufNewFile *.c 0r ~/.config/nvim/templates/template.c
autocmd BufNewFile *.py 0r ~/.config/nvim/templates/template.py
