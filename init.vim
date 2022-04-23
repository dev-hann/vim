	syntax on
	filetype plugin on
	let mapleader = ","
	set cursorline
	set encoding=utf-8
	set splitbelow
	set splitright
	set nocompatible
	set nu
	set hlsearch
	set ts=3
	set sts=3
	set sw=3
	set autoindent
	set smartindent
	set autowrite
	set paste


	call plug#begin()

	"Coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	"Flutter
	Plug 'dart-lang/dart-vim-plugin'
	Plug 'thosakwe/vim-flutter'

	"Golang
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

	"Utils
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'preservim/nerdcommenter'
	Plug 'blueyed/vim-diminactive'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/tagbar'
	Plug 'Konfekt/FastFold'

	"Theme
	Plug 'lifepillar/vim-gruvbox8'
	Plug 'sheerun/vim-polyglot'
	
	

	call plug#end()


	colorscheme gruvbox8_hard
   let g:airline_theme='simple'

	"Coc
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	"Flutter
	nnoremap <leader>fr :FlutterRun<cr>
	nnoremap <leader>fs :FlutterSplit<cr>
	nnoremap <leader>fa :FlutterAttach<cr>
	nnoremap <leader>fp :CocCommand flutter.pub.get<cr>
	nnoremap <leader>df :DartFmt<CR>
	
	"Go
	nnoremap <leader>gf :GoFmt<CR>
	
	"Utill
	nnoremap <F2> :NERDTreeToggle<CR>
	nnoremap <F3> <Plug>NERDCommenterToggle<CR>
	nmap <F6> <Plug>(coc-rename)
	nmap <F8> :TagbarToggle<CR>
	
	nnoremap <C-\> :vsplit<CR>
	

	"Go
	let g:go_highlight_operators = 1
	let g:go_highlight_functions = 1
	let g:go_highlight_function_parameters = 1
	let g:go_highlight_function_calls = 1
	let g:go_highlight_types = 1
	let g:go_highlight_fields = 1
	let g:go_highlight_build_constraints = 1
	let g:go_highlight_variable_declarations = 1
	let g:go_highlight_variable_assignments = 1

	"Comment
	let g:NERDCreateDefaultMappings = 1
	let g:NERDSpaceDelims = 1
	let g:NERDCompactSexyComs = 1
	let g:NERDDefaultAlign = 'left'
	let g:NERDCommentEmptyLines = 1
	let g:NERDTrimTrailingWhitespace = 1
	let g:NERDToggleCheckAllLines = 1

	"Dart
	let g:dart_style_guide = 2
	
	"Flutter
	let g:flutter_autoscroll = 1
	
	"foramt
	nnoremap <C-M-l> :call Format()<CR>
	function! Format()
		let ext = expand('%:e')
		if ext=='dart'
			call dart#fmt()
		endif
		if ext=='go'
			call go#fmt#Format(-1)
		endif
	endfunction
	
	"fold
	autocmd FileType go,dart setlocal foldmethod=syntax

	"tagbar
	let g:tagbar_type_dart = { 'ctagsbin': '~/.pub-cache/bin/dart_ctags' }
