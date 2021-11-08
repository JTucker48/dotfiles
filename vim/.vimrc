" Line Numbering
set relativenumber
set number
let g:airline_detect_whitespace=0

" Theme
set background=dark
colorscheme PaperColor 
au ColorScheme * hi Normal ctermbg=none guibg=no
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
nmap <F2> :CocCommand explorer<CR>
" Comment Bindings
nmap <C-_> gc<CR>
" Split Navigation Bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-S> <C-W><C-S>
nnoremap <C-V> <C-W><C-V>
