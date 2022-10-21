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
	set clipboard=unnamedplus
	set spell
	set conceallevel=0
	set termguicolors
	set mouse=a

	call plug#begin()

	" Coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	"Flutter
	Plug 'dart-lang/dart-vim-plugin'
	Plug 'thosakwe/vim-flutter'

	" Golang
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	
	" Utility
	Plug 'scrooloose/nerdtree'	
	Plug 'preservim/nerdcommenter'
	Plug 'blueyed/vim-diminactive'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'mg979/vim-visual-multi'
	Plug 'junegunn/fzf',{'do':{->fzf#install()}}
	Plug 'junegunn/fzf.vim'
	Plug 'Yggdroot/indentLine'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'tpope/vim-surround'

	" Buffer Tab
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

	" Theme
	Plug 'morhetz/gruvbox'
	Plug 'sheerun/vim-polyglot'
	
	call plug#end()

	colorscheme gruvbox
	" let g:gruvbox_contrast_dark='hard'
   let g:airline_theme='simple'

	" Coc
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)
	" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	" NerdTree
	let g:NERDTreeMinimalMenu=1
	
	" Utility
	nnoremap <F2> :NERDTreeToggle<CR>
	nnoremap <F3> <Plug>NERDCommenterToggle<CR>
	nmap <F6> <Plug>(coc-rename)
	nmap <F8> :TagbarToggle<CR>
	
	nnoremap <C-\> :vsplit<CR>

	" Go
	let g:go_highlight_operators = 1
	let g:go_highlight_functions = 1
	let g:go_highlight_function_parameters = 1
	let g:go_highlight_function_calls = 1
	let g:go_highlight_types = 1
	let g:go_highlight_fields = 1
	let g:go_highlight_build_constraints = 1
	let g:go_highlight_variable_declarations = 1
	let g:go_highlight_variable_assignments = 1

	" Comment
	let g:NERDCreateDefaultMappings = 1
	let g:NERDSpaceDelims = 1
	let g:NERDCompactSexyComs = 1
	let g:NERDDefaultAlign = 'left'
	let g:NERDCommentEmptyLines = 1
	let g:NERDTrimTrailingWhitespace = 1
	let g:NERDToggleCheckAllLines = 1

	" Dart
	let g:dart_style_guide = 2
	
	" Bufferline
	lua require"bufferline".setup()

	" Markdown
	let g:indentLine_setConceal = 0

	" format
	nnoremap <C-l> :call Format()<CR>
	
	function! Format()
	let extension = expand('%:e')
		if extension=='dart'
			call dart#fmt()
		endif
		if extension=='go'
			call go#fmt#Format(-1)
		endif
	endfunction
