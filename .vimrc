" Lots of stuff borrowed from Janus
" ----------------------------------------
" Display Settings
" ----------------------------------------
set t_Co=256  " 256 color term
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
"colorscheme desert256
colorscheme lucius
LuciusBlack

" ----------------------------------------
" Basic Settings
" ----------------------------------------
set nocompatible  " vim defaults
set number        " number lines 
set ruler         " columns
syntax enable     " syntax highlighting
set encoding=utf-8  " UTF-8 ftw!
set history=1000  " keep long history
set hidden        " shhh!!!


" ----------------------------------------
" Silent Mode
" ----------------------------------------
set noerrorbells
set visualbell
set t_vb=
set tm=500

" ----------------------------------------
" Whitespace Settings
" ----------------------------------------
set nowrap        " no word wrap
set tabstop=2     " tab = 2 spaces
set shiftwidth=2  " autoindent is 2 spaces
set expandtab     " use spaces not tabs
set backspace=indent,eol,start " backspace through everything in insert 
set list          " show hidden chars
set autoindent    " autoindent new lines

" ----------------------------------------
" List Chars Settings
" ----------------------------------------
set listchars=""        " reset
set listchars=tab:\ \   " tab = 2 space
set listchars+=trail:.  " show trailing whitespace
set listchars+=extends:>  " for nowrap
set listchars+=precedes:<


" ----------------------------------------
" Search Settings
" ----------------------------------------
set hlsearch      " search hilghtlighting
set incsearch     " search partial
set ignorecase    " well, ignore case
set smartcase     " unless I say so

" ----------------------------------------
" Statusline Settings
" ----------------------------------------
set nomodeline
set laststatus=2
set statusline+=%f\ %m\ %r
set statusline+=Line:%l/%L[%p%%]
set statusline+=Col:%v
set statusline+=Buf:#%n
set statusline+=[%b][0x%B]

set cmdheight=2   " lemme see them commands son!

" ----------------------------------------
" Reminder to stay under 80 chars
" ----------------------------------------
let &colorcolumn=join(range(81,666),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" ----------------------------------------
" Remappings
" ----------------------------------------
" Firefox style:
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>


" scroll up/down faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" ----------------------------------------
" Misc Settings
" ----------------------------------------
set showmatch   " show matching brackets
set mat=2       " blink on matching brackets
set wildmenu    " autocomplete menu
set confirm     " confirm on unsaved exit
set showcmd     " show commands in bottom

" ----------------------------------------
" More Misc (AKA What Do These Do?)
" ----------------------------------------
set nostartofline
set mouse=a


filetype indent plugin on
" open dir listing 
"autocmd Explore


" ----------------------------------------
" Plugins and Pathogen!
" ----------------------------------------
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'syntastic')
execute pathogen#infect()

" Syntastic settings
" let g:syntastic_check_on_open=1   " Run syntastic on file open
" let g:syntastic_cpp_compiler = 'clang++'  " c++11
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++' " c++11

autocmd vimenter * if !argc() | NERDTree | endif  " Load NERDTree on start
map <C-n> :NERDTreeToggle<CR>   " map ctrl-n toggle nerdtree
