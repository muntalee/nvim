" Run files
if has('nvim')
  autocmd filetype java nnoremap <F5> :w <bar> :terminal java % <CR>
  autocm filetype java nnoremap <F3> :w <bar> :terminal javac % <CR>
  autocmd filetype java nnoremap <F4> :w <bar> :terminal java %:r <CR>
  autocmd filetype python nnoremap <F5> :w <bar> :terminal python % <CR>
endif

if has('gui_running') || has('vim')
  autocmd filetype python nnoremap <F5> :w <bar> :!python % <CR>
  autocmd filetype java nnoremap <F5> :w <bar> :!java % <CR>
  autocmd filetype java nnoremap <F3> :w <bar> :!javac % <CR>
  autocmd filetype java nnoremap <F4> :w <bar> :!java %:r <CR>
endif
