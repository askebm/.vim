function! SlimeSectionSend()
	let cl=getcurpos()
	execute "?^%%"
	let ul=getcurpos()
	execute "/^%%"
	let ll=getcurpos()
	call setpos('.',cl)
	execute ul[1].",".ll[1]."SlimeSend"
endfunction
command -bar SlimeSectionSend call SlimeSectionSend()

" Slime send things
source ~/.vim/scripts/slime-send.vim


" Search online matlab help for word under cursor
nnoremap <S-k> "zyiw:exe "!qutebrowser " . shellescape("https://se.mathworks.com/help/search.html?qdoc=". @z ."&submitsearch=")<CR><CR>
