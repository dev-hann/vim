	let mapleader = ","
	set nocompatible
	set nu
	set hlsearch
	set ts=3
	set sts=3
	set sw=3


	let g:dart_style_guide = 2
	let g:dart_format_on_save = 1
	let g:lsc_auto_map = v:true


	call plug#begin()


	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'dart-lang/dart-vim-plugin'
	Plug 'thosakwe/vim-flutter'
	Plug 'natebosch/vim-lsc'
	Plug 'natebosch/vim-lsc-dart'

	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

	Plug 'joshdick/onedark.vim'
	Plug 'sheerun/vim-polyglot'

	call plug#end()


	colorscheme onedark

silent! nmap <C-b> :NERDTreeToggle<CR>
silent! nmap <C-l> :DartFmt<CR>
"silent! nmap <C-'> :FlutterHotReload<CR>
silent! nmap <C-\> :vsplit<CR>

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nnoremap <silent> K :call <SID>show_documentation()<CR>
