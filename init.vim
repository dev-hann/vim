	syntax on
	filetype plugin on
	let mapleader = ","
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

	"Theme
	"Plug 'morhetz/gruvbox'
	Plug 'lifepillar/vim-gruvbox8'
	Plug 'sheerun/vim-polyglot'
	
	

	call plug#end()
:

	colorscheme gruvbox8_hard
   

	" Coc
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)


	" FlutterMap
	nnoremap <leader>fr :FlutterRun<cr>
	nnoremap <leader>fs :FlutterSplit<cr>
	nnoremap <leader>fa :FlutterAttach<cr>
	nnoremap <leader>fp :CocCommand flutter.pub.get<cr>
	
	nnoremap <leader>df :DartFmt<CR>
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)
	
	" GoMap
	nnoremap <leader>gf :GoFmt<CR>
	
	" UtillMap
	nnoremap <F2> :NERDTreeToggle<CR>
	nnoremap <F3> <Plug>NERDCommenterToggle<CR>
	nmap <F6> <Plug>(coc-rename)
	
	nnoremap <C-\> :vsplit<CR>




	augroup LspGo
	au!
  	autocmd User lsp_setup call lsp#register_server({
    	\ 'name': 'go-lang',
    	\ 'cmd': {server_info->['gopls']},
    	\ 'whitelist': ['go'],
    	\ })
	autocmd FileType go setlocal omnifunc=lsp#complete
	"autocmd FileType go nmap <buffer> gd <plug>(lsp-definition)
	"autocmd FileType go nmap <buffer> ,n <plug>(lsp-next-error)
	"autocmd FileType go nmap <buffer> ,p <plug>(lsp-previous-error)
	augroup END
	
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
	
