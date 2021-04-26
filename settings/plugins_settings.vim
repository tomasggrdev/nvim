"Si no estamos trabajando con kite podemos llamar a CoC
if &filetype == "javascript"  || &filetype == "python"
    inoremap <c-space> <C-x><C-u>
else
    inoremap <silent><expr> <c-space> coc#refresh()
endif
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
let NERDTreeMapOpenInTab='<leader>t'
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
"notification after file change
 autocmd FileChangedShellPost *
 \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
