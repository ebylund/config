syntax on
set number
let mapleader=" "
imap jk <Esc>
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader>h ^
nnoremap <Leader>l $
" nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

