" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'z956/vim-wintabs-powerline'
Plug 'z956/vim-wintabs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'wesleyche/Trinity', { 'on': ['TagbarToggle', 'TrinityToggleAll', 'TrinityToggleSourceExplorer', 'TrinityToggleNERDTree', 'TrinityToggleTagList']}
Plug 'fatih/vim-go', { 'for': 'go' }

" Initialize plugin system
call plug#end()

" basic setting
syntax on
set nu
set hlsearch
set autoindent
set history=1000
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2
set expandtab
set background=dark
set incsearch
set fo-=r
set nocscopeverbose
set matchpairs+=<:>

" for kernel
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set colorcolumn=90

" Pathogen
call pathogen#infect()
call pathogen#helptags()

" remember where we are
"if has("autocmd")
"	autocmd BufRead *.txt set tw=78
"	autocmd BufReadPost *
"		\ if line("'\"") > 0 && line ("'\"") <= line("$") |
"			\   exe "normal g'\"" |
"		\ endif
"endif

" map number pad
inoremap <Esc>Oq 1
inoremap <Esc>Or 2
inoremap <Esc>Os 3
inoremap <Esc>Ot 4
inoremap <Esc>Ou 5
inoremap <Esc>Ov 6
inoremap <Esc>Ow 7
inoremap <Esc>Ox 8
inoremap <Esc>Oy 9
inoremap <Esc>Op 0
inoremap <Esc>On .
inoremap <Esc>OQ /
inoremap <Esc>OR *
inoremap <Esc>Ol +
inoremap <Esc>OS -

" buffer related
" shortcut for switching between buffers is defined in wintabs
set hidden
nnoremap bd :Kwbd<CR>

" vim-airline
set encoding=utf-8
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='wombat'
" set status line
set laststatus=2
" enable powerline-fonts
let g:airline_powerline_fonts = 1
" reset color scheme for tabline
" this is a workaround for including wintabs...
" this setting is only fit for theme wombat
hi! TabLineFill cterm=NONE gui=NONE guifg=#32322F guibg=#32322F ctermfg=238 ctermbg=238
hi! TabLineSel cterm=NONE gui=NONE guifg=#242424 guibg=#CAE682 ctermfg=235 ctermbg=192
hi! TabLine cterm=NONE gui=NONE guifg=#CAE682 guibg=#242424 ctermfg=192 ctermbg=235

" wintabs
let g:wintabs_ui_buffer_name_format = '[%n]%t'
nnoremap <C-J> :WintabsNext<CR>
nnoremap <C-K> :WintabsPrevious<CR>
nnoremap <Space>1 :WintabsGo 1<CR>
nnoremap <Space>2 :WintabsGo 2<CR>
nnoremap <Space>3 :WintabsGo 3<CR>
nnoremap <Space>4 :WintabsGo 4<CR>
nnoremap <Space>5 :WintabsGo 5<CR>
nnoremap <Space>6 :WintabsGo 6<CR>
nnoremap <Space>7 :WintabsGo 7<CR>
nnoremap <Space>8 :WintabsGo 8<CR>
nnoremap <Space>9 :WintabsGo 9<CR>

" trinity
nnoremap <F7> :TagbarToggle<CR>
nnoremap <F8>  :TrinityToggleAll<CR>
nnoremap <F9>  :TrinityToggleSourceExplorer<CR>
nnoremap <F10> :TrinityToggleNERDTree<CR>
nnoremap <F11> :TrinityToggleTagList<CR>

" nerdtree icon
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"

" ctrlp
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.ko,*.d
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll|jpg|png|jpeg|ko)$',
"  \ }
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

autocmd Filetype python setlocal tabstop=4 softtabstop=4 shiftwidth=4 backspace=2 expandtab
autocmd Filetype java setlocal tabstop=4 softtabstop=4 shiftwidth=4 backspace=2 expandtab

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" define env variable indicate that we are in vim
let $INSIDE_VIM = 1
