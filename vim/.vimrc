" PLUG-INS

call plug#begin('~/.vim/plugged')
    Plug 'arcticicestudio/nord-vim'
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'fatih/vim-go', {'do': ':GoUpdateBinares' } 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end() 

" SETINGS
    set softtabstop=0 noexpandtab
    set autoindent 
    syntax on
    colorscheme nord 
    set encoding=utf-8    
    set hidden
    set nobackup
    set nowritebackup
    set cmdheight=2
    set updatetime=300
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
" VIMGO
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
