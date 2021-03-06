set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set number
set relativenumber
syntax enable
set hidden
set history=100
set wildmenu
set wildmode=longest,list,full
set tabstop=2 shiftwidth=2 smarttab

" Colorscheme
let t_Co=256
let g:gruvbox_italic = '1'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column = 'bg0'
set background=dark
colorscheme gruvbox

" Enable Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=bg
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235

"let g:livepreview_previewer = '$HOME/.vim/scripts/mupdf.inotify'
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode = 0
"let g:vimtex_compiler_latexmk_engines = {
"			\ '_' : '-pdflua'
"			\}
let g:vimtex_copmpiler_method = 'latexmk'
let g:vimtex_compiler_latexmk = {
		\ 'executable' : 'latexmk',
		\ 'callback' : 0,
    \ 'options' : [
    \   '-pdflualatex="lualatex -shell-escape %O %S"',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \   '-f',
    \ ],
    \}


" Set UltiSnip Directory
let g:UltiSnipsSnippetDirectories = ["UltiSnips","myUltiSnips"]
let g:UltiSnipsSnippetsDir = "~/.vim/myUltiSnips"
let g:UltiSnipsEditSplit = "horizontal"

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<Leader><Leader>'
let g:UltiSnipsListSnippets='<c-tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" Define where slime sends output
let g:slime_target = "vimterminal"
let g:slime_no_mappings=1

" Define leader key
let mapleader= ","
set showcmd
" Set default latex type
let g:tex_flavor = "latex"

" Conceal sections
set conceallevel=1
let g:tex_conceal='abdmg'

" Clangd_complete "
let g:ycm_use_clangd = 1
let g:ycm_clangd_binary_path = '/usr/bin/clangd'
"let g:ycm_clangd_binary_path = '/home/aske/.vim/pack/git-plugins/start/YouCompleteMe/third_party/ycmd/third_party/clangd/output/bin/clangd'
let g:ycm_clangd_uses_ycmd_caching = 1
" Disable scratchbar
set completeopt-=preview

" Edit ft specific sourced file
nnoremap <Leader>fe :execute ":sp ~/.vim/after/ftplugin/" . &ft . ".vim"<CR>
" Edit Ultisnips
nnoremap <Leader>ue :UltiSnipsEdit<CR>
" Edit vimrc
nnoremap <Leader>ve :sp ~/.vim/vimrc<CR>

" Yank visual to clipboard
xnoremap <Leader>y :w !xclip -selection clipboard<CR><CR>

" View buffers and choose
nnoremap <leader>bb :ls<CR>:b<Space>

" Airline config
let g:airline_powerline_fonts = 1

" Mathematica synta higlighting
let g:mma_candy = 1


" Git stuff
nnoremap <leader>ga :!git add % && git commit -m ""<Left>

"Costume keybind
inoremap <Left> {
inoremap <Right> }

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
