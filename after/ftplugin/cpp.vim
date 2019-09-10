"Compile on ctrl-c
nnoremap <C-c> :w<CR> <bar> :!clear && cmake . -B build &&  cmake --build build/<CR>
