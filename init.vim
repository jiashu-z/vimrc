set number
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start
set splitright
set hlsearch
set incsearch
set encoding=utf-8

" solarized dark theme
" syntax enable
" set background=dark
" colorscheme solarized

" rainbow bracket
let g:rainbow_active = 1

call plug#begin()
"    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline-themes'
"    Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
call plug#end()

" let g:NERDTreeWinPos = "left""
" autocmd VimEnter * NERDTree | wincmd p


" Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
