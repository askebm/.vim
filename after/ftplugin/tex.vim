nnoremap <F12> :call FigScreenGrab()<CR>
function! ScreenGrab()
	let arg = expand('%:p:h')
	let res = substitute(system('~/.vim/scripts/ScreenGrab.sh ' . arg),'.\{1}$','','g')
	call setline(line('.'), getline('.') .  res)
endfunction
function! FigScreenGrab()
	:normal! o\begin{figure}[h]
	:normal! o\centering
	:normal! o\includegraphics[width=0.8\textwidth]{
	call ScreenGrab()
	call setline(line('.'), getline('.') . '}')
	:normal! o\caption{Caption:}
	:normal! o\label{fig:}
	:normal! o\end{figure}
endfunction
