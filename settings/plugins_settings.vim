"  ____    ____       _   _   _                 
" |  _ \  / ___|  ___| |_| |_(_)_ __   __ _ ___ 
" | |_) | \___ \ / _ \ __| __| | '_ \ / _` / __|
" |  __/   ___) |  __/ |_| |_| | | | | (_| \__ \
" |_| (_) |____/ \___|\__|\__|_|_| |_|\__, |___/
"                                     |___/     

" @Author: EdwzDev 
" Youtube : https://www.youtube.com/channel/UC8Fv2rHCAztH0Dd2BqzOLVg
" Linkedin : https://www.linkedin.com/in/edwinjpr11/
" Github : https://github.com/EdwzDev

"Configuraciones automática
" <<------------ Themes ------------->
" Airline
let g:airline_theme = 'onehalfdark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0


" Theme neovim - Gruvbox
colorscheme onehalfdark
set bg=dark

" <<----------- Nerdtree ------------>
" Hidden files
let NERDTreeShowHidden=1
" Close nerdtree when we open a file 
let NERDTreeQuitOnOpen=1

" <<---------- Rainbow ------------->
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" <<---------- Vim Indent ---------->
let g:indent_guides_enable_on_vim_startup = 1

" <<---------- Indent inteligence -->
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
