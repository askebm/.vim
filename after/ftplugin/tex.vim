set updatetime=500
nnoremap <F12> :call FigScreenGrab()<CR>
function! ScreenGrab()
	let arg = expand('%:p:h')
	let res = substitute(system('~/.vim/scripts/ScreenGrab.sh ' . arg),'.\{1}$','','g')
	call setline(line('.'), getline('.') .  res)
endfunction
function! FigScreenGrab()
	:normal! o\begin{figure}[H]
	:normal! o\centering
	:normal! o\includegraphics[width=\textwidth]{
	call ScreenGrab()
	call setline(line('.'), getline('.') . '}')
	:normal! o\caption{Caption:}
	:normal! o\label{fig:}
	:normal! o\end{figure}
endfunction
nnoremap <F2> :call RenameFile()<CR>
function! RenameFile()
	let curline = getline('.')
	let oldpath = substitute(curline, '\v.*\{(.*)\}.*','\1', '')
	call inputsave()
	let newfn = input('Enter new file name: ')
	if matchstr(newfn,"/") == ""
		let newpath = substitute(oldpath, '\v(.*\/).*','\1','') . newfn
	else
		let newpath = newfn
	endif
	let ext = substitute(oldpath, '\v.*(\..*)', '\1', '')
	let newpath = newpath . ext
	let choice = confirm("Rename file from:\n\t'" . oldpath . "'\nto:\n\t'" . newpath . "'?", "&Yes\n&No")
	if choice == 1
		call setline(line('.'), substitute(curline , oldpath, newpath, ''))
		let newpath = expand('%:p:h') . "/" . newpath
		let oldpath = expand('%:p:h') . "/" . oldpath
		call system( "mv " . oldpath . " " . newpath)
	endif
endfunction
