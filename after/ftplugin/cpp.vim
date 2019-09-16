""Compile on ctrl-c
nnoremap <C-c> :wa<CR> <bar> :!clear && ln -sf build/compile_commands.json ./ && cmake -Bbuild &&  cmake --build build/<CR>
set makeprg=ln\ -sf\ build/compile_commands.json\ ./\ &&\ cmake\ -Bbuild\ &&\ cmake\ --build\ build
"nnoremap <Leader>cc :make<CR>
" Run compiled executable
nnoremap <Leader>rb :!clear && ./build/$(cat CMakeLists.txt \| grep add_executable \| sed -E "s/.*\((\S+).*/\1/g")<CR>

" Auto fold based on cpp syntax
set foldmethod=syntax

compiler/gcc
