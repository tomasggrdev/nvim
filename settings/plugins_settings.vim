"Configuraciones automáticas
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"Asignar el color del tema
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set bg=dark
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#formatter = 'unique_tail'
"Cerramos el nerdtree al abrir un archivo
let NERDTreeQuitOnOpen=1
"Color paréntesis
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType * RainbowParentheses

"Auto indent al dar enter
"inoremap <expr> <CR> InsertMapForEnter()
"function! InsertMapForEnter()
    "if pumvisible()
        "return "\<C-y>"
    "elseif strcharpart(getline('.'),getpos('.')[2]-1,1) == '}'
        "return "\<CR>\<Esc>O"
    "elseif strcharpart(getline('.'),getpos('.')[2]-1,2) == '</'
        "return "\<CR>\<Esc>O"
    "else
        "return "\<CR>"
    "endif
"endfunction

"Auto recarga en nerdtree
"trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
"Agregar auto tabs con nerdtree
let NERDTreeMapOpenInTab='<leader>t'
"notification after file change
 autocmd FileChangedShellPost *
 \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

