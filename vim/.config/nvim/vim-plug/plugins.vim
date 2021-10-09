" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Syntax 
    Plug 'sheerun/vim-polyglot'
    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-scripts/java_getset.vim'
    Plug 'vim-scripts/xhtml.vim'
    Plug 'tpope/vim-commentary'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Theme
    Plug 'liuchengxu/space-vim-dark'
    Plug 'joshdick/onedark.vim'
    " tmux
    Plug 'aserowy/tmux.nvim'
    Plug 'christoomey/vim-tmux-navigator'
call plug#end()
