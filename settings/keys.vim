"Definimos nuestra tecla lider (el espacio)
let mapleader=" "
"Con nmap los atajos solo funcionan en el modo normal
"Atajo Easy Motion, búsqueda de palabras, espacio + s
nmap <Leader>s <Plug>(easymotion-s2)
"Atajo para copiar al portapapeles
vnoremap <C-c> "+y
"Atajo Nerdtree, lista de archivos y carpetas para navegar, oprima s para abrir un archivo, espacio + n
nmap <Leader>n :NERDTreeFind<CR> 
"Atajo Bracey, para abrir el live server, espacio + b
nmap <Leader>b :Bracey<CR> 
"Atajo VCoolor, para abrir la paleta de colores, espacio + c
nmap <Leader>g :VCoolor<CR>
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
"Navegar por las tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
