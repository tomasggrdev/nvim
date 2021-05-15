"  ____  _                              
" |  _ \| |_   _  __ _(_)_ __  ___ 
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
"                |___/     

" @Author: Edwz-Dev
" Youtube : https://www.youtube.com/channel/UC8Fv2rHCAztH0Dd2BqzOLVg
" Linkedin : https://www.linkedin.com/in/edwinjpr11/
" Github : https://github.com/edwz-dev

call plug#begin('~/.vim/plugged')                                 
Plug 'vimlab/split-term.vim'                                      " Split term => Deploy a terminal inside neovim.
Plug 'preservim/nerdcommenter'                                    " Nerdcommenter => Allows to create comments.
Plug 'morhetz/gruvbox'                                            " Gruvbox => Theme for neovim.
Plug 'easymotion/vim-easymotion'                                  " Vim easymotion => Find words in the document.
Plug 'preservim/nerdtree'                                         " Nerdtree => File manager.
Plug 'christoomey/vim-tmux-navigator'                             " Vim tmux navigator => Switch between windows.
Plug 'vim-airline/vim-airline'                                    " Vim airline => Style bar.
Plug 'vim-airline/vim-airline-themes'                             " Vim airline themes => Themes for style bar.
Plug 'Raimondi/delimitMate'                                       " Delimit mate => Auto-close parentheses.
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}   " Bracey vim => Live server.
Plug 'prettier/vim-prettier', {                                   
  \ 'do': 'npm install',
  \ 'branch': 'release/0.x'
  \ }                                                             " Prettier => Allows to organize code.
Plug 'junegunn/rainbow_parentheses.vim'                           " Rainbow parentheses => parenthesis colors.
Plug 'mattn/emmet-vim'                                            " Emmet Vim => snippets html5.
Plug 'neoclide/coc.nvim', {'branch': 'release'}                   " Coc nvim=> CocInstall coc-html coc-tsserver coc-json coc-css => autocomplete.
Plug 'ap/vim-css-color'                                           " Vim CSS color => css colors.
Plug 'ryanoasis/vim-devicons'                                     " Vim dev icons => Icons nerdtree.
Plug 'mhinz/vim-signify', { 'branch': 'legacy' }                  " Vim signify => git status.
Plug 'terryma/vim-multiple-cursors'                               " Vim multiple cursors.
call plug#end()
