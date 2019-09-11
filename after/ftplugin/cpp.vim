"Compile on ctrl-c
nnoremap <C-c> :wa<CR> <bar> :!clear && cmake . -B build &&  cmake --build build/<CR>

set foldmethod=syntax
set foldnestmax=3
