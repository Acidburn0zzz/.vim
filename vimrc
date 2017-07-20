set tabstop=4 softtabstop=0 noexpandtab shiftwidth=2
syntax on
set updatetime=250
set number
set rnu
noremap ; :
colorscheme desert
set incsearch
set autoindent
set wildmenu

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

function PwdLast()
	let spl = split(expand('%:p'), '/')
	if(len(spl) > 3)
		return spl[-3] . "/" . spl[-2] . "/" . spl[-1]
	elseif(len(spl) == 3)
		return "/" . spl[-3] . "/" . spl[-2] . "/" . spl[-1]
	elseif(len(spl) == 2)
		return "/" . spl[-2] . "/" . spl[-1]
	elseif(len(spl) == 1)
		return "/" . spl[-1]
	else
		return "/"
endfunction

set laststatus=2 " Show status line with only one buffer open
set statusline=%{PwdLast()}[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set statusline+=%{fugitive#statusline()}

set backupdir=~/.vim/bak//
set directory=~/.vim/swp//
set undodir=~/.vim/undo//
set undofile
