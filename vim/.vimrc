" Line Numbering
set relativenumber
set number

" Theme
set background=dark
colorscheme PaperColor 
highlight Normal ctermbg=none
highlight NonText ctermbg=none

set laststatus=2
set splitbelow

" Key Mappings
tnoremap <C->

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" ExplorerBindings
nmap <F2> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let NERDTreeMapCustomOpen ="l"
let NERDTreeMapActivateNode ="h"
let NERDTreeMapOpenSplit = "v"
let g:NERDTreeGitStatusUseNerdFonts = 1
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
