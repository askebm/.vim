" SlimeSend
inoremap <C-c> <Esc>:<C-U>.SlimeSend<CR>a
vnoremap <C-c> :<C-U>'<,'>SlimeSend<CR>
nnoremap <C-c> :<C-U>.SlimeSend<CR>

nnoremap <S-k> "zyiw:exe "!qutebrowser " . shellescape("https://reference.wolfram.com/search/?q=") . @z<CR><CR>
