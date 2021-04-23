"Transparencia en neovim
au ColorScheme * hi Normal ctermbg=none guibg=none
"Mostrar titulo
set title
"Mostrar número de la línea
set number
"Permitir el mouse
set mouse=v
set numberwidth=1
"Permitir pegar en modo insertar
set clipboard=unnamedplus
"Comando para colocar VTerm abajo
set splitbelow
"Autoguardado
autocmd BufLeave,FocusLost * silent! wall
"Codificacion UTF
set encoding=utf-8
"Configuración para que el tema funcione bien
set termguicolors
"Ver cuantas lineas hay por debajo de la línea actual
set relativenumber
"Reconocer la sintaxis
syntax enable
"Ver la posición del cursos, linea y carácter
set showcmd
set ruler
"Ver el estado de vim, normal, visual, insertar
set noshowmode
set laststatus=2
"Ver la linea actual en la que se está parado
set cursorline
"autoindent al dar enter
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

call plug#begin('~/.vim/plugged')
"Terminal en neovim
Plug 'vimlab/split-term.vim'
"Comentarios
Plug 'preservim/nerdcommenter'
"Tema de ayu 
Plug 'sonph/onehalf', { 'rtp': 'vim' }
"Easymotion
Plug 'easymotion/vim-easymotion'
"Nerdtree
Plug 'preservim/nerdtree'
"Navegar entre archivos
Plug 'christoomey/vim-tmux-navigator'
"Linea de estado
Plug 'itchyny/lightline.vim'
"Autocompletar paréntesis
Plug 'Raimondi/delimitMate'
"Instalar live server
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
"Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/0.x'
  \ }
"Color picker
Plug 'KabbAmine/vCoolor.vim'
"Color parentesís
Plug 'junegunn/rainbow_parentheses.vim'
"Emmet
Plug 'mattn/emmet-vim'
"Coc autocomplete CocInstall coc-html coc-tssserver coc-json coc-css
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Colores para el css
Plug 'ap/vim-css-color'
"Iconos para nerdtree
Plug 'ryanoasis/vim-devicons'
"Git
Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
"Multiple-cursors
Plug 'terryma/vim-multiple-cursors'
call plug#end()

"Definimos nuestra tecla lider (el espacio)
let mapleader=" "
"Con nmap los atajos solo funcionan en el modo normal
"Atajo Easy Motion, búsqueda de palabras, espacio + s
nmap <Leader>s <Plug>(easymotion-s2)
"Atajo Nerdtree, lista de archivos y carpetas para navegar, oprima s para abrir un archivo, espacio + n
nmap <Leader>n :NERDTreeFind<CR> 
"Atajo Bracey, para abrir el live server, espacio + b
nmap <Leader>b :Bracey<CR> 
"Atajo VCoolor, para abrir la paleta de colores, espacio + c
nmap <Leader>c :VCoolor<CR>
"Copiar y pegar al portapapeles
nmap <Leader>y : "+y<CR>
"Atajo noh, sirve para quitar la selección después de buscar con /palabra
nmap <Leader>i :noh<CR>
"Atajos para guardar, espacio w
nmap <Leader>w :w!<CR>
"Atajo para cerrar, espacio + q
nmap <Leader>q :q!<CR>
"Atajo Term, abre una terminal, F2
map <F2> :10Term<CR>
"Configurar los comentarios con control slash /
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
"Atajo prettier, espacio + p
nmap <Leader>p :Prettier<CR>
"Colocar emmet con espacio y coma " ,
imap <Leader>, <C-y>,
"Atajos con COC
nmap <silent> cd <Plug>(coc-definition)
nmap <silent> cy <Plug>(coc-type-definition)
nmap <silent> ci <Plug>(coc-implementation)
nmap <silent> cr <Plug>(coc-references)
"Si no estamos trabajando con kite podemos llamar a CoC
if &filetype == "javascript"  || &filetype == "python"
    inoremap <c-space> <C-x><C-u>
else
    inoremap <silent><expr> <c-space> coc#refresh()
endif
"Configurar closetag
let g:closetag_shortcut = '<enter>'
"Configuraciones automáticas
"Asignar el color del tema
colorscheme onehalfdark 
"Cerramos el nerdtree al abrir un archivo
let NERDTreeQuitOnOpen=1
"Configurar kite, autocompletado para JS y Python
let g:kite_supported_languages = ['javascript', 'python']
"Color paréntesis
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType * RainbowParentheses
"Configurar Kite
let g:kite_supported_languages = ['javascript', 'python']
"Configurar CoC
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@
"Configurar barra de estado
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste' ],[], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \ 'left': [['inactive'], ['relativepath']],
      \ 'right': [['bufnum']]
      \  },
      \ 'component': {
      \  'bufnum': '%n',
      \  'inactive': 'Inactive'
      \ },
      \ 'component_function': {
      \  'gitbranch': 'fugitive#head',
      \  'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'onehalfdark',
      \ 'subseparator': {
      \     'left': '',
      \     'right': ''
      \ }
      \ }

"Auto indent al dar enter
inoremap <expr> <CR> InsertMapForEnter()
function! InsertMapForEnter()
    if pumvisible()
        return "\<C-y>"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,1) == '}'
        return "\<CR>\<Esc>O"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,2) == '</'
        return "\<CR>\<Esc>O"
    else
        return "\<CR>"
    endif
endfunction

"Auto recarga en nerdtree
"trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
"Agregar auto tabs con nerdtree
let NERDTreeMapOpenInTab='<ENTER>'
"Ir a cada tab usando la letra principal más el número
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
"notification after file change
 autocmd FileChangedShellPost *
 \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
