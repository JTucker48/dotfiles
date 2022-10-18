" Line Numbering
set relativenumber
set number

" Theme
highlight Normal ctermbg=none
highlight NonText ctermbg=none

set laststatus=2
set splitbelow

autocmd FileType markdown setlocal spell spelllang=en_uk
set spellsuggest=best,9

" Split Navigation Bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-S> <C-W><C-S>
nnoremap <C-V> <C-W><C-V>
