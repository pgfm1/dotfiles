call plug#begin('~/.local/share/nvim/plugged')

" Available color themes.
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'derekwyatt/vim-scala', { 'for': ['scala'] }
Plug 'w0rp/ale', { 'for': ['scala', 'vim', 'rust'] }
Plug 'ap/vim-buftabline'
Plug 'wellle/targets.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'

" Org Mode
Plug 'jceb/vim-orgmode'

" NERDTree
Plug 'scrooloose/nerdtree'

" Rust-specific plugins
Plug 'rust-lang/rust.vim'  " Core Rust support.
Plug 'cespare/vim-toml'    " For TOML (Cargo build) file support

" Language Server Client Setup
Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() }}

" Git management
Plug 'tpope/vim-fugitive'

call plug#end()

filetype plugin indent on
let mapleader=","
let maplocalleader=","
let g:deoplete#enable_at_startup = 1

" === Color Scheme === {{
set termguicolors
set t_Co=256
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"colorscheme quantum
colorscheme gruvbox
" let g:quantum_italics = 1
let g:rainbow_active = 1
" }}

" === History and Undo Levels === {{
set history=512
set undolevels=128
set undofile
set undodir=~/.config/nvim/undo
" }}

" === Assorted Core Settings === {{
syntax on
set noswapfile
set nocompatible
set modelines=0
set hidden            " Hide buffers
set encoding=utf-8    " Always use UTF-8 explicitly
set number            " Show line numbers by default
set cursorline        " Highlight the current line
set noshowmode        " Hide show-mode, this is for lightline
set showcmd           " Display incomplete commands at the bottom
set noerrorbells      " ... we just don't like beeping
set visualbell        " Flash rather than beep
set t_vb=             " Don't flash please
set ttyfast           " Some optimizations for rendering
set ruler             " Show row and column number
set laststatus=2      " Last window has a status line
set showmatch         " Show matching parens
set lazyredraw        " redraw only when necessary, hopefully more efficient.
set pastetoggle=<F2>  " Cheap way to paste toggle
set completeopt-=preview " Disable the preview window, usually annoying.
" }}

" === Indentation === {{
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
" }}

" === Search Settings === {{
set ignorecase
set smartcase         
set incsearch
set showmatch
set hlsearch
nmap <silent> <leader>/ :nohlsearch<CR>
" }}

" === General Ignores === {{
set wildignore=*.class,*.pyc,*.swp,*.o,*.jar
set wildignore+=*/tmp/*,*.zip,*.tar,*.gz,*.bz2
set wildignore+=*/.idea/*,*.iml
set wildignore+=*/node_modules/*
" }}

" === FZF Configuration and Key Bindings === {{
let $FZF_DEFAULT_COMMAND='rg --files --no-messages "" .'
nmap ; :Buffers<CR>
nmap <C-p> :Files<CR>
" }}

" === ctags Configuration and Key Bindings === {{
set tags=./tags,tags
nnoremap <leader>tm :!ctags -R -f ./tags .<CR>
nnoremap <leader>ts :Tags<cr>
nnoremap <leader>tw :call fzf#vim#tags("'".expand('<cword>'))<cr>
nnoremap <leader>tb :BTags<cr>
" }}

" === Other Key Mappings === {{
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <leader>s :up<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bd :bd<cr>
map <C-m> :NERDTreeToggle<CR>
" }}

" === Scala Configuration === {{
au BufNewFile,BufRead *.scala set filetype=scala
au BufNewFile,BufRead *.sbt   set filetype=scala
autocmd FileType scala        setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType sbt          setlocal shiftwidth=2 tabstop=2 softtabstop=2
" }}

" === Async Linting (ALE Configuration) === {{
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_completion_enabled = 0
" }}

" === netrw === {{
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
" }}

" === buftabline Configuration === {{
let g:buftabline_show = 2
let g:buftabline_numbers = 1
let g:buftabline_indicators = 1
" }}

" === Org Mode Configuration === {{
autocmd FileType org setlocal tw=120
let g:org_agenda_files = ['~/todo/2019/*.org']
" }}

" === Language Server Configuration === {{
" ~/.vimrc
" Configuration for coc.nvim

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Code actions
" nmap <leader>a  <Plug>(coc-codeaction-selected)
" vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac <Plug>(coc-codeaction)

" Remap for do action format
" THIS BREAKS REVERSE FORWARD TO LETTER
" nnoremap <silent> F :call CocAction('format')<CR>

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" }}
