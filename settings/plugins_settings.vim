"  ____    ____       _   _   _                 
" |  _ \  / ___|  ___| |_| |_(_)_ __   __ _ ___ 
" | |_) | \___ \ / _ \ __| __| | '_ \ / _` / __|
" |  __/   ___) |  __/ |_| |_| | | | | (_| \__ \
" |_| (_) |____/ \___|\__|\__|_|_| |_|\__, |___/
"                                     |___/     

" @Author: Edwz-Dev
" Youtube : https://www.youtube.com/channel/UC8Fv2rHCAztH0Dd2BqzOLVg
" Linkedin : https://www.linkedin.com/in/edwinjpr11/
" Github : https://github.com/edwz-dev

"Configuraciones automática
" <<------------ Themes ------------->
" Airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1     
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Theme neovim - Gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set bg=dark

" <<----------- Nerdtree ------------>
" Hidden files
let NERDTreeShowHidden=1
" Close nerdtree when we close a file 
let NERDTreeQuitOnOpen=1
" Automatic reload when creating files 
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost *
\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" <<---------- Rainbow ------------->
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType * RainbowParentheses


" <<------------- CoC -------------->
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

