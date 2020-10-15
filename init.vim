call plug#begin('~/.local/share/nvim/plugged')

" =============================================================================
" Key usability plugins
" =============================================================================

" Language Server Client Setup
" Note:
" - :CocInstall coc-metals
" - :CocInstall coc-json
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" FZF Fuzzy Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'

" Extremely improved and expanded motions.
Plug 'easymotion/vim-easymotion'

" Floating terminal support for Neovim
Plug 'voldikss/vim-floaterm'

" =============================================================================
" Languages and project type support.
" =============================================================================

" Core Scala Support
Plug 'derekwyatt/vim-scala', { 'for': ['scala'] }

" Neuron Zettelkasten
Plug 'fiatjaf/neuron.vim'

" =============================================================================
" General support
" =============================================================================

" Visualizer for the Vim undo tree.
Plug 'simnalamburt/vim-mundo'

" Delete, change, and add surroundings like ", ', (, etc.
Plug 'tpope/vim-surround'

" Improved 'repeat' (via .) functionality that plugins can leverage.
Plug 'tpope/vim-repeat'

" Git management
Plug 'tpope/vim-fugitive'

" Improved support for dates.
Plug 'tpope/vim-speeddating'

" Provides additional text objects.
Plug 'wellle/targets.vim'

" =============================================================================
" Visual enhancements
" =============================================================================

" Provides a buffer list in the tab line.
Plug 'ap/vim-buftabline'

" Available color themes.
" Plug 'tyrannicaltoucan/vim-quantum'
Plug 'morhetz/gruvbox'

call plug#end()

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

filetype plugin indent on
let mapleader=","
let maplocalleader=","

" === Color Scheme === {{
set termguicolors
set t_Co=256
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme gruvbox
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
set colorcolumn=80    " Right margin display
set spelllang=en_us
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

" Press ; to show a list of active buffers (+ fuzzy search)
nmap ; :Buffers<CR>

" Press Ctrl+P to show a list of files (+ fuzzy search)
nmap <C-p> :Files<CR>

" }}

" === Other Key Mappings === {{
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <leader>s :up<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bd :bd<cr>
" }}

" === Scala Configuration === {{
au BufNewFile,BufRead *.scala set filetype=scala
au BufNewFile,BufRead *.sbt   set filetype=scala
autocmd FileType scala        setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType sbt          setlocal shiftwidth=2 tabstop=2 softtabstop=2
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

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other 
" plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Used in the tab autocompletion for coc
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current 
" position. Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Used to expand decorations in worksheets
nmap <Leader>ws <Plug>(coc-metals-expand-decoration)

" Use K to either doHover or show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType scala setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current 
" paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add status line support, for integration with other plugin, checkout 
" `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
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

" Notify coc.nvim that <enter> has been pressed.
" Currently used for the formatOnType feature.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Toggle panel with Tree Views
nnoremap <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Reveal current current class (trait or object) in Tree View 'metalsBuild'
nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsBuild<CR>
" }}

" === floaterm Configuration === {{
let g:floaterm_keymap_new    = '<leader>tc'
let g:floaterm_keymap_prev   = '<leader>tp'
let g:floaterm_keymap_next   = '<leader>tn'
let g:floaterm_keymap_toggle = '<leader>tt'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
" }}
