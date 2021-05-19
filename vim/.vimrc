" PLUG-INS

call plug#begin('~/.vim/plugged')
    Plug 'arcticicestudio/nord-vim'
	Plug 'morhetz/gruvbox'
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'fatih/vim-go', {'do': ':GoUpdateBinares' } 
    
call plug#end() 

" SETINGS
    set softtabstop=0 noexpandtab
    set autoindent 
	syntax on
    colorscheme nord 
    
	set number
	set expandtab
	set tabstop=4
    set shiftwidth=4
	set hlsearch
	set incsearch

" MAPPINGS

	map <C-n> :NERDTreeToggle<CR>

	" windows movement
	map <silent> <C-h> :call WinMove('h') <CR>
	map <silent> <C-j> :call WinMove('j') <CR>
	map <silent> <C-k> :call WinMove('k') <CR>
	map <silent> <C-l> :call WinMove('l') <CR>

" FUNCTIONS

	" windows movement
	function! WinMove(key)
		let t:curwin = winnr()
		exec "wincmd ".a:key
		if (t:curwin == winnr())
			if(match(a:key,'[jk]'))
				wincmd v
			else 
				wincmd s
			endif
			exec "wincmd ".a:key
		endif 
	endfunction	
