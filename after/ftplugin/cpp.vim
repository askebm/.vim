""Compile on ctrl-c
"nnoremap <C-c> :wa<CR> <bar> :!clear && ln -sf build/compile_commands.json ./ && cmake -Bbuild &&  cmake --build build/<CR>
set makeprg=ln\ -sf\ build/compile_commands.json\ ./\ &&\ cmake\ -Bbuild\ &&\ cmake\ --build\ build
nnoremap <C-c> :make<CR>
" Run compiled executable
nnoremap <Leader>rb :!clear && ./build/$(cat CMakeLists.txt \| grep add_executable \| sed -E "s/.*\(\s*(\S+).*/\1/g")<CR>
" GDB - Debug
nnoremap <Leader>gdb :!clear && gdb ./build/$(cat CMakeLists.txt \| grep add_executable \| sed -E "s/.*\(\s*(\S+).*/\1/g")<CR>

" Auto fold based on cpp syntax
set foldmethod=syntax

compiler/gcc

" Restart YouCompleteMe Server
nnoremap <Leader>ycr :YcmRestartServer<CR>

" YouCompleteMe FixIt
nnoremap <Leader>yf :YcmCompleter FixIt<CR>


" cmake4vim settings
let g:cmake_compile_commands = 1
let g:cmake_compile_commands_link = "./"

function RoviMode()
	let g:ycm_clangd_binary_path='/home/aske/Git/ROVI-docker/rovi-clangd'
	YcmRestartServer
endfunction
function TaiMode()
	let g:ycm_clangd_binary_path='/home/aske/Git/TAI-Docker/tai-clangd'
	YcmRestartServer
endfunction
