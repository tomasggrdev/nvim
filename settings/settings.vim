"Transparencia en neovim
au ColorScheme * hi Normal ctermbg=none guibg=none
"Mostrar titulo
set title
"Mostrar número de la línea
set number
"Permitir el mouse
set mouse=a
set numberwidth=1
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
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set expandtab
"Copiar al portapapeles por defecto
set clipboard=unnamedplus
