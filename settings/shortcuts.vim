"  ____  _                _             _       
" / ___|| |__   ___  _ __| |_ ___ _   _| |_ ___ 
" \___ \| '_ \ / _ \| '__| __/ __| | | | __/ __|
"  ___) | | | | (_) | |  | || (__| |_| | |_\__ \
" |____/|_| |_|\___/|_|   \__\___|\__,_|\__|___/

" @Author: Edwz-Dev
" Youtube : https://www.youtube.com/channel/UC8Fv2rHCAztH0Dd2BqzOLVg
" Linkedin : https://www.linkedin.com/in/edwinjpr11/
" Github : https://github.com/edwz-dev

" <<----------------- Shortcuts -------------->
" Leader key.
let g:mapleader = "\<Space>"
" Open tabs with nerdtree.
let NERDTreeMapOpenInTab='<leader>t'
" Shortcut for easymotion. 
nmap <Leader>s <Plug>(easymotion-s2)
" Copy to clipboard.
vnoremap <C-c> "+y
" Shortcut for nerdtree.
nmap <Leader>n :NERDTreeFind<CR>
" Shortcut for live server.
nmap <Leader>b :Bracey<CR>
" Delete searches.
nmap <Leader>i :noh<CR>
" Shortcut for save changes.
nmap <Leader>w :w!<CR>
" Shortcut for close files.
nmap <Leader>q :q!<CR>
" Shortcut to open a terminal. 
map <F2> :10Term<CR>

" <<----------------- Comments --------------->
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" <<---------------- Prettier ---------------->
nmap <Leader>p :Prettier<CR>
imap <Leader>, <C-y>,

" <<---------- Open tabs --------------------->
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt