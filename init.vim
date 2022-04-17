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
	Plug 'preservim/nerdcommenter'
	Plug 'airblade/vim-gitgutter'
	Plug 'blueyed/vim-diminactive'
	Plug 'tpope/vim-fugitive'
	Plug 'prabirshrestha/async.vim'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'

	"Theme
	Plug 'joshdick/onedark.vim'
	Plug 'sheerun/vim-polyglot'
	
	

	call plug#end()


	colorscheme onedark

	" FlutterMap
	nnoremap <leader>fr :FlutterRun<cr>
	nnoremap <leader>fs :FlutterSplit<cr>
	nnoremap <leader>fa :FlutterAttach<cr>
	nnoremap <leader>df :DartFmt<CR>
	"
	" GoMap
	nnoremap <leader>gf :GoFmt<CR>
	
	" UtillMap
	nnoremap <F2> :NERDTreeToggle<CR>
	nnoremap <F3> <Plug>NERDCommenterToggle<CR>
	
	nnoremap <C-\> :vsplit<CR>

	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)



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


