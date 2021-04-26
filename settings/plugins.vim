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
