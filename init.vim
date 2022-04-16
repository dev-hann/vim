	syntax on
	let mapleader = ","
	set splitbelow
	set splitright
	set nocompatible
	set nu
	set hlsearch
	set ts=3
	set sts=3
	set sw=3


	let g:dart_style_guide = 2
	let g:dart_format_on_save = 1
	let g:lsc_auto_map = v:true
	let g:flutter_autoscroll = 1

	call plug#begin()


	Plug 'neoclide/coc.nvim', {'branch': 'release'}


	"Flutter
	Plug 'dart-lang/dart-vim-plugin'
	Plug 'thosakwe/vim-flutter'
	Plug 'natebosch/vim-lsc'
	Plug 'natebosch/vim-lsc-dart'

	"Golang
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

	"Utils
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'airblade/vim-gitgutter'
	Plug 'blueyed/vim-diminactive'
	Plug 'tpope/vim-fugitive'

	Plug 'joshdick/onedark.vim'
	Plug 'sheerun/vim-polyglot'
	
	

	call plug#end()


	colorscheme onedark

	nnoremap <leader>fr :FlutterRun<cr>
	nnoremap <leader>fs :FlutterSplit<cr>
	nnoremap <leader>fa :FlutterAttach<cr>
	
	nnoremap <F2> :NERDTreeToggle<CR>
	nnoremap <C-l> :DartFmt<CR>
	nnoremap <C-\> :vsplit<CR>

	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

