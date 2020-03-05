" Run current file
nnoremap <buffer> <silent> <leader>rf :JupyterRunFile<CR>
"nnoremap <buffer> <silent> <leader>I :PythonImportThisFile<CR>

" Change to directory of current file
nnoremap <buffer> <silent> <leader>cd :JupyterCd %:p:h<CR>

" Send a selection of lines
nnoremap <buffer> <silent> <c-c> :JupyterSendCell<CR>
"nnoremap <buffer> <silent> <leader>E :JupyterSendRange<CR>
"nmap     <buffer> <silent> <leader>e <Plug>JupyterRunTextObj
xnoremap <buffer> <silent> <c-c> :JupyterSendRange<CR>

"nnoremap <buffer> <silent> <leader>U :JupyterUpdateShell<CR>

" Debugging maps
"nnoremap <buffer> <silent> <leader>b :PythonSetBreak<CR>
" SlimeSend
"source ~/.vim/scripts/slime-send.vim

