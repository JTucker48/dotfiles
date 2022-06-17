" Line Numbering
set relativenumber
set number

" Theme
highlight Normal ctermbg=none
highlight NonText ctermbg=none

let g:rainbow_active = 1

set laststatus=2
set splitbelow

autocmd FileType markdown setlocal spell spelllang=en_uk
set spellsuggest=best,9

highlight StartifyHeader ctermfg=10
let g:nvimascii = [
\'               _         ',
\'   ____ _   __(_)___ ___ ',
\'  / __ \ | / / / __ `__ \',
\' / / / / |/ / / / / / / /',
\'/_/ /_/|___/_/_/ /_/ /_/ ',
\]                        
let g:startify_padding_left = 10
let g:startify_custom_header = g:nvimascii

 let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent ']            },
          \ { 'type': 'dir',       'header': ['   Recent '. getcwd()] },
          \ ]

" Split Navigation Bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-S> <C-W><C-S>
nnoremap <C-V> <C-W><C-V>
