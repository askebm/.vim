""Compile on ctrl-c
nnoremap <C-c> :wa<CR> <bar> :!clear && ln -sf build/compile_commands.json ./ && cmake -Bbuild &&  cmake --build build/<CR>
set makeprg=ln\ -sf\ build/compile_commands.json\ ./\ &&\ cmake\ -Bbuild\ &&\ cmake\ --build\ build
"nnoremap <Leader>cc :make<CR>
" Run compiled executable
nnoremap <Leader>rb :!clear && ./build/$(cat CMakeLists.txt \| grep add_executable \| sed -E "s/.*\((\S+).*/\1/g")<CR>

" Auto fold based on cpp syntax
set foldmethod=syntax
" CMake Parser
" Call stack entries
let &efm = ' %#%f:%l %#(%m)'
" Start of multi-line error
let &efm .= ',%E' . 'CMake Error at %f:%l (message):'
" End of multi-line error
let &efm .= ',%Z' . 'Call Stack (most recent call first):'
" Continuation is message
let &efm .= ',%C' . ' %m'
