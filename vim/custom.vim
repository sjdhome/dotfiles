let g:gruvbox_contrast_light = 'hard'
autocmd vimenter * ++nested colorscheme gruvbox

syntax on
set nocompatible
set history=1000
set mouse=a
set hidden
set showcmd
set cursorline

set tabstop=2
set shiftwidth=0
set softtabstop=0

" Disable special indent
set nocindent
set nosmartindent
set autoindent
set indentexpr=
filetype indent off
filetype plugin indent off

set list
set listchars=tab:\ \ ,space:·,eol:\ 

function! UseTab(size)
	set noexpandtab
	execute 'set tabstop=' . a:size
endfunction
command! -nargs=1 UseTab call UseTab(<args>)

function! UseSpace(size)
	set expandtab
	execute 'set tabstop=' . a:size
endfunction
command! -nargs=1 UseSpace call UseSpace(<args>)
